package org.sami.electit.features.users.mutations.vote.application;

import org.sami.electit.features.elections.shared.infrastructure.repositories.ElectionRepository;
import org.sami.electit.features.users.shared.api.dtos.VoteDTO;
import org.sami.electit.features.users.shared.infrastructure.repositories.VoterRepository;
import org.sami.electit.shared.domain.exceptions.InvalidEntryDataException;
import org.sami.electit.shared.domain.exceptions.NoEntryFoundException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import reactor.core.publisher.Mono;

@Service
public class CastVoteUseCase {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private ElectionRepository electionRepository;
	@Autowired
	private VoterRepository voterRepository;

	@Transactional
	public Mono<VoteDTO> execute(Authentication claims, Long electionId, Long candidateId) {
		// if election does not exist, throw exception
		// if election is not ongoing, throw exception
		// if candidate does not exist, throw exception
		// if user has already voted in the election, throw exception
		var username = claims.getName();
		logger.info("User: {} is voting in election: {} for candidate: {}", username, electionId, candidateId);

		var userMono = voterRepository.findOneByName(username);
		var electionMono = electionRepository.findById(electionId);

		return Mono.zip(userMono, electionMono)
				.flatMap(tuple -> {
					var user = tuple.getT1();
					var election = tuple.getT2();

					if (!election.isOngoing()) {
						return Mono.error(new InvalidEntryDataException("Cannot vote in a past or upcoming election"));
					}

					var candidate = election.candidates().stream()
							.filter(c -> c.id().equals(candidateId))
							.findFirst()
							.orElseThrow(() -> new NoEntryFoundException("Candidate not found"));

					return voterRepository.checkIfUserHasVoted(user.getId(), electionId)
							.flatMap(hasVoted -> {
								if (hasVoted) {
									return Mono.error(new InvalidEntryDataException("User has already voted in the election"));
								} else {
									var vote = user.addVote(candidate);
									return voterRepository.save(user)
											.flatMap(u -> electionRepository.findElectionForCandidate(candidateId))
											.map(vote::toDTO);
								}
							});
				})
				.switchIfEmpty(Mono.error(new NoEntryFoundException("Election not found")));
	}
}
