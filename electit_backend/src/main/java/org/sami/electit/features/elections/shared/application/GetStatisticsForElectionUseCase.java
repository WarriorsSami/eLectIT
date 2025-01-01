package org.sami.electit.features.elections.shared.application;

import org.sami.electit.features.candidates.shared.infrastructure.repositories.CandidateRepository;
import org.sami.electit.features.elections.shared.api.dtos.ElectionDTO;
import org.sami.electit.features.elections.shared.infrastructure.repositories.ElectionRepository;
import org.sami.electit.features.users.shared.api.dtos.VoteDTO;
import org.sami.electit.shared.domain.entities.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;
import reactor.util.function.Tuples;

@Service
public class GetStatisticsForElectionUseCase {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private ElectionRepository electionRepository;
	@Autowired
	private CandidateRepository candidateRepository;

	@Transactional
	public Mono<ElectionDTO> execute(User user, Election election) {
		logger.info("Getting statistics for election with id: {}", election.id());

		VoteDTO myVote;
		if (user instanceof Voter voter) {
			myVote = voter.getVotes().stream()
					.filter(vote -> election.candidates().contains(vote.candidate()))
					.findFirst()
					.map(vote -> vote.toDTO(election))
					.orElse(null);
		} else {
			myVote = null;
		}

		if (isAllowedToViewStatistics(user, election)) {
			return electionRepository.countVotesForElection(election.id())
					.flatMap(votesCount -> Flux.fromStream(election.candidates().stream())
							.flatMap(candidate -> candidateRepository.countVotesForCandidatePerElection(candidate.id(), election.id())
									.map(candidate::toDTO))
							.collectList()
							.map(candidates -> Tuples.of(candidates.stream()
									.reduce((c1, c2) -> c1.votesCount() > c2.votesCount() ? c1 : c2)
									.orElseThrow(), candidates))
							.map(candidatesTuple -> {
								var winner = candidatesTuple.getT1();
								var candidates = candidatesTuple.getT2();

								return election.toDTO(winner, votesCount, candidates, myVote);
							})
					);
		}

		var candidates = election.candidates().stream()
				.map(candidate -> candidate.toDTO(0))
				.toList();
		return Mono.just(election.toDTO(null, 0, candidates, myVote));
	}

	private Boolean isAllowedToViewStatistics(User user, Election election) {
		if (!election.isOngoing()) {
			return true;
		}

		if (user instanceof Organizer organizer) {
			return organizer.getElections().contains(election);
		}

		return false;
	}
}
