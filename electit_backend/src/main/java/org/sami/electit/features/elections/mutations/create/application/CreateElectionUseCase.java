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
import org.sami.electit.shared.domain.exceptions.NoEntryFoundException;
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
		return userRepository.findOneByName(username)
				.switchIfEmpty(Mono.error(new NoEntryFoundException("User not found")))
				.cast(Organizer.class)
				.flatMap(user -> {
					var election = Election.fromDTO(electionInput);

					return Flux.fromIterable(electionInput.candidates())
							.flatMap(candidateInput -> {
								var candidate = Candidate.fromDTO(candidateInput);
								return candidateRepository.save(candidate);
							})
							.collectList()
							.map(candidates -> {
								election.candidates().addAll(candidates);
								return election;
							})
							.flatMap(electionRepository::save)
							.flatMap(newElection -> {
								user.getElections().add(newElection);
								return userRepository.save(user).thenReturn(newElection);
							})
							.flatMap(e -> getStatisticsForElectionUseCase.execute(user, e));
				});
	}
}