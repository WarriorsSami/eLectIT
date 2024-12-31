package org.sami.electit.features.candidates.mutations.remove.application;

import org.sami.electit.features.candidates.shared.infrastructure.repositories.CandidateRepository;
import org.sami.electit.features.elections.shared.api.dtos.ElectionDTO;
import org.sami.electit.features.elections.shared.application.GetStatisticsForElectionUseCase;
import org.sami.electit.features.elections.shared.infrastructure.repositories.ElectionRepository;
import org.sami.electit.features.users.shared.infrastructure.repositories.UserRepository;
import org.sami.electit.shared.domain.entities.Election;
import org.sami.electit.shared.domain.entities.Organizer;
import org.sami.electit.shared.domain.exceptions.ForbiddenActionException;
import org.sami.electit.shared.domain.exceptions.NoEntryFoundException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import reactor.core.publisher.Mono;

@Service
public class RemoveCandidateUseCase {
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
	public Mono<ElectionDTO> execute(Authentication claims, Long electionId, Long candidateId) {
		logger.info("Removing candidate with id: {} from election with id: {}", candidateId, electionId);

		var username = claims.getName();
		var user = (Organizer) userRepository.findOneByName(username)
				.blockOptional()
				.orElseThrow();

		// if election does not exist, throw exception
		// if user is not the organizer of the election, throw exception
		// if the election is not upcoming, throw exception
		// if candidate does not exist in the election, throw exception
		return electionRepository.findById(electionId)
				.switchIfEmpty(Mono.error(new NoEntryFoundException("Election not found")))
				.flatMap(election -> {
					if (!user.getElections().contains(election)) {
						return Mono.error(new ForbiddenActionException("User is not the organizer of the election"));
					}

					if (!election.isUpcoming()) {
						return Mono.error(new ForbiddenActionException("Cannot remove candidate from an ongoing or past election"));
					}

					var candidate = election.candidates().stream()
							.filter(c -> c.id().equals(candidateId))
							.findFirst()
							.orElseThrow(() -> new NoEntryFoundException("Candidate not found"));

					election.candidates().remove(candidate);

					return candidateRepository.delete(candidate)
							.thenReturn(election)
							.flatMap(electionRepository::save)
							.mapNotNull(e -> getStatisticsForElectionUseCase.execute(user, e).block());
				});
	}
}
