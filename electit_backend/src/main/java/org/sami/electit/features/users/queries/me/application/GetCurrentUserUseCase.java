package org.sami.electit.features.users.queries.me.application;

import org.sami.electit.features.elections.shared.application.GetStatisticsForElectionUseCase;
import org.sami.electit.features.users.shared.api.dtos.OrganizerDTO;
import org.sami.electit.features.users.shared.api.dtos.UserDTO;
import org.sami.electit.features.users.shared.application.GetVotesForUserUseCase;
import org.sami.electit.features.users.shared.infrastructure.repositories.UserRepository;
import org.sami.electit.shared.domain.entities.Organizer;
import org.sami.electit.shared.domain.entities.Voter;
import org.sami.electit.shared.domain.exceptions.NoEntryFoundException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import reactor.core.publisher.Mono;
import reactor.core.scheduler.Schedulers;

import java.util.Optional;

@Service
public class GetCurrentUserUseCase {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private GetVotesForUserUseCase getVotesForUserUseCase;
	@Autowired
	private GetStatisticsForElectionUseCase getStatisticsForElectionUseCase;
	@Autowired
	private UserRepository userRepository;

	@Transactional
	public Mono<UserDTO> execute(Authentication claims) throws NoEntryFoundException {
		var name = claims.getName();

		logger.info("Getting current user with name: {}", name);

		return userRepository.findOneByName(name)
				.publishOn(Schedulers.boundedElastic())
				.map(user -> {
					logger.info("Current user with name: {} found", name);

					if (user instanceof Voter voter) {
						var votes = getVotesForUserUseCase.execute(voter).collectList().block();
						return Optional.of(voter.toDTO(votes));
					} else if (user instanceof Organizer organizer) {
						var dto = organizer.toDTO();
						var managedElections = organizer.getElections().stream()
								.map(e -> getStatisticsForElectionUseCase.execute(organizer, e).block())
								.toList();

						var newDto = UserDTO.fromOrganizer(OrganizerDTO.copy(dto.organizer(), managedElections));

						return Optional.of(newDto);
					} else {
						return Optional.<UserDTO>empty();
					}
				})
				.switchIfEmpty(Mono.error(new NoEntryFoundException("User not found")))
				.map(Optional::get);
	}
}
