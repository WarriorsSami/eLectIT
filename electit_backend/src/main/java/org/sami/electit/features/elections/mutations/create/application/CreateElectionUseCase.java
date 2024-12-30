package org.sami.electit.features.elections.mutations.create.application;

import org.sami.electit.features.candidates.shared.infrastructure.repositories.CandidateRepository;
import org.sami.electit.features.elections.shared.api.dtos.ElectionDTO;
import org.sami.electit.features.elections.shared.api.dtos.ElectionInput;
import org.sami.electit.features.elections.shared.application.GetStatisticsForElectionUseCase;
import org.sami.electit.features.elections.shared.infrastructure.repositories.ElectionRepository;
import org.sami.electit.features.users.shared.infrastructure.repositories.UserRepository;
import org.sami.electit.shared.domain.entities.Candidate;
import org.sami.electit.shared.domain.entities.Election;
import org.sami.electit.shared.domain.entities.Organizer;
import org.sami.electit.shared.domain.exceptions.DuplicateEntryException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

@Service
public class CreateElectionUseCase {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private GetStatisticsForElectionUseCase getStatisticsForElectionUseCase;
	@Autowired
	private ElectionRepository electionRepository;
	@Autowired
	private CandidateRepository candidateRepository;
	@Autowired
	private UserRepository userRepository;

	@Transactional
	public Mono<ElectionDTO> execute(Authentication claims, ElectionInput electionInput) {
		logger.info("Creating election with title: {}", electionInput.title());

		var username = claims.getName();
		var user = (Organizer) userRepository.findOneByName(username)
				.blockOptional()
				.orElseThrow();

		return electionRepository.save(Election.fromDTO(electionInput))
				.flatMap(election -> Flux.fromStream(electionInput.candidates().stream()
						.map(candidateInput -> {
							var candidate = Candidate.fromDTO(candidateInput);

							if (election.candidates().stream().anyMatch(c -> c.name().equals(candidate.name()))) {
								return Mono.error(new DuplicateEntryException("Candidate already exists in the election"));
							}

							return candidateRepository.save(candidate)
									.doOnNext(savedCandidate -> election.candidates().add(savedCandidate));
						})).collectList().thenReturn(election))
				.flatMap(election -> {
					user.getElections().add(election);
					return userRepository.save(user).thenReturn(election);
				})
				.mapNotNull(e -> getStatisticsForElectionUseCase.execute(user, e).block());
	}
}
