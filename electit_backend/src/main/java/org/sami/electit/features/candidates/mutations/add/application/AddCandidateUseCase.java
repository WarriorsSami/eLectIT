package org.sami.electit.features.candidates.mutations.add.application;

import org.sami.electit.features.candidates.shared.api.dtos.CandidateInput;
import org.sami.electit.features.candidates.shared.infrastructure.repositories.CandidateRepository;
import org.sami.electit.features.elections.shared.api.dtos.ElectionDTO;
import org.sami.electit.features.elections.shared.application.GetStatisticsForElectionUseCase;
import org.sami.electit.features.elections.shared.infrastructure.repositories.ElectionRepository;
import org.sami.electit.features.users.shared.infrastructure.repositories.UserRepository;
import org.sami.electit.shared.domain.entities.Candidate;
import org.sami.electit.shared.domain.entities.Organizer;
import org.sami.electit.shared.domain.exceptions.DuplicateEntryException;
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
public class AddCandidateUseCase {
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
	public Mono<ElectionDTO> execute(Authentication claims, Long electionId, CandidateInput candidate) {
		logger.info("Adding candidate to election with id: {}", electionId);

		// if election does not exist, throw exception
		// if user is not the organizer of the election, throw exception
		// if election is not upcoming, throw exception
		// if candidate already exists in the election, throw exception
		var username = claims.getName();
		return userRepository.findOneByName(username)
				.switchIfEmpty(Mono.error(new NoEntryFoundException("User not found")))
				.cast(Organizer.class)
				.flatMap(user -> electionRepository.findById(electionId)
						.switchIfEmpty(Mono.error(new NoEntryFoundException("Election not found")))
						.flatMap(election -> {
							if (!user.getElections().contains(election)) {
								return Mono.error(new ForbiddenActionException("User is not the organizer of the election"));
							}

							if (!election.isUpcoming()) {
								return Mono.error(new ForbiddenActionException("Cannot add candidate to an ongoing or past election"));
							}

							if (election.candidates().stream().anyMatch(c -> c.name().equals(candidate.name()))) {
								return Mono.error(new DuplicateEntryException("Candidate already exists in the election"));
							}

							var newCandidate = Candidate.fromDTO(candidate);

							return candidateRepository.save(newCandidate)
									.flatMap(c -> {
										election.candidates().add(c);
										return electionRepository.save(election)
												.thenReturn(election);
									});
						})
						.flatMap(e -> getStatisticsForElectionUseCase.execute(user, e)));
	}
}
