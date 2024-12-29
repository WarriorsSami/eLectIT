package org.sami.electit.features.elections.update.application;

import org.sami.electit.features.elections.shared.api.dtos.ElectionDTO;
import org.sami.electit.features.elections.shared.api.dtos.UpdateElectionInput;
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
public class UpdateElectionUseCase {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private ElectionRepository electionRepository;
	@Autowired
	private UserRepository userRepository;

	@Transactional
	public Mono<ElectionDTO> execute(Authentication claims, Long electionId, UpdateElectionInput election) {
		var username = claims.getName();
		var user = (Organizer) userRepository.findOneByName(username)
				.blockOptional()
				.orElseThrow();

		logger.info("Updating election with id: {} by user: {}", electionId, username);
		
		// if election does not exist, throw exception
		// if user is not the organizer of the election, throw exception
		return electionRepository.findById(electionId)
			.flatMap(e -> {
				if (!user.getElections().contains(e)) {
					return Mono.error(new ForbiddenActionException("User is not the organizer of the election"));
				}

				var updatedElection = e.update(election);
				return electionRepository.save(updatedElection)
					.map(Election::toDTO);
			})
			.switchIfEmpty(Mono.error(new NoEntryFoundException("Election not found")));
	}
}
