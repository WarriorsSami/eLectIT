package org.sami.electit.features.elections.mutations.update.application;

import org.sami.electit.features.elections.shared.api.dtos.ElectionDTO;
import org.sami.electit.features.elections.shared.api.dtos.UpdateElectionInput;
import org.sami.electit.features.elections.shared.application.GetStatisticsForElectionUseCase;
import org.sami.electit.features.elections.shared.infrastructure.repositories.ElectionRepository;
import org.sami.electit.features.users.shared.infrastructure.repositories.UserRepository;
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
	private GetStatisticsForElectionUseCase getStatisticsForElectionUseCase;
	@Autowired
	private ElectionRepository electionRepository;
	@Autowired
	private UserRepository userRepository;

	@Transactional
	public Mono<ElectionDTO> execute(Authentication claims, Long electionId, UpdateElectionInput election) {
		// if election does not exist, throw exception
		// if user is not the organizer of the election, throw exception
		// if the election is not upcoming, throw exception
		var username = claims.getName();
		return userRepository.findOneByName(username)
				.switchIfEmpty(Mono.error(new NoEntryFoundException("User not found")))
				.cast(Organizer.class)
				.doOnNext(user -> {
					logger.info("Updating election with id: {} by user: {}", electionId, username);
				})
				.flatMap(user -> electionRepository.findById(electionId)
						.flatMap(e -> {
							if (!user.getElections().contains(e)) {
								return Mono.error(new ForbiddenActionException("User is not the organizer of the election"));
							}

							if (!e.isUpcoming()) {
								return Mono.error(new ForbiddenActionException("Cannot update an ongoing or past election"));
							}

							var updatedElection = e.update(election);
							return electionRepository.save(updatedElection)
									.flatMap(ue -> getStatisticsForElectionUseCase.execute(user, ue));
						})
						.switchIfEmpty(Mono.error(new NoEntryFoundException("Election not found"))));
	}
}
