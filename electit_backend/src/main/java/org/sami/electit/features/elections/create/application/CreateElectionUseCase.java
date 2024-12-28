package org.sami.electit.features.elections.create.application;

import java.util.stream.Collectors;

import org.sami.electit.features.candidates.shared.infrastructure.repositories.CandidateRepository;
import org.sami.electit.features.elections.shared.api.dtos.ElectionDTO;
import org.sami.electit.features.elections.shared.api.dtos.ElectionInput;
import org.sami.electit.features.elections.shared.infrastructure.repositories.ElectionRepository;
import org.sami.electit.features.users.shared.infrastructure.repositories.UserRepository;
import org.sami.electit.shared.domain.entities.Candidate;
import org.sami.electit.shared.domain.entities.Election;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import reactor.core.publisher.Mono;

@Service
public class CreateElectionUseCase {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

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
		var organizer = userRepository.findOneByName(username)
				.blockOptional()
				.orElseThrow();

		return electionRepository.save(Election.fromDTO(electionInput))
				.flatMap(election -> {
					var candidateMonos = electionInput.candidates().stream()
							.map(candidateInput -> {
								var candidate = Candidate.fromDTO(candidateInput);
								election.candidates().add(candidate);
								return candidateRepository.save(candidate);
							})
							.collect(Collectors.toList());

					return Mono.when(candidateMonos)
							.thenReturn(election);
				})
				.flatMap(election -> {
					organizer.addCreatedElection(election);
					return userRepository.save(organizer).thenReturn(election);
				})
				.map(Election::toDTO);
	}
}
