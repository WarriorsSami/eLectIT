package org.sami.electit.features.users.shared.application;

import org.sami.electit.features.elections.shared.infrastructure.repositories.ElectionRepository;
import org.sami.electit.features.users.shared.api.dtos.VoteDTO;
import org.sami.electit.shared.domain.entities.Voter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import reactor.core.publisher.Flux;

@Service
public class GetVotesForUserUseCase {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private ElectionRepository electionRepository;

	@Transactional
	public Flux<VoteDTO> execute(Voter user) {
		return Flux.merge(user.getVotes().stream()
				.map(vote -> electionRepository.findElectionForCandidate(vote.candidate().id())
						.map(vote::toDTO))
				.toList());
	}
}