package org.sami.electit.features.users.queries.login.application;

import org.sami.electit.features.users.shared.api.dtos.AuthResponse;
import org.sami.electit.features.users.shared.api.dtos.LoginInput;
import org.sami.electit.features.users.shared.application.GetVotesForUserUseCase;
import org.sami.electit.features.users.shared.infrastructure.repositories.UserRepository;
import org.sami.electit.shared.domain.entities.Organizer;
import org.sami.electit.shared.domain.entities.Voter;
import org.sami.electit.shared.domain.exceptions.InvalidEntryDataException;
import org.sami.electit.shared.domain.exceptions.NoEntryFoundException;
import org.sami.electit.shared.security.JWTTokenGenerator;
import org.sami.electit.shared.security.PasswordManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import reactor.core.publisher.Mono;
import reactor.core.scheduler.Schedulers;

import java.util.Optional;

@Service
public class LoginUseCase {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private GetVotesForUserUseCase getVotesForUserUseCase;
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private PasswordManager passwordManager;
	@Autowired
	private JWTTokenGenerator jwtGenerator;

	@Transactional
	public Mono<AuthResponse> execute(LoginInput credentials) throws NoEntryFoundException, InvalidEntryDataException {
		logger.info("Login attempt for user with email: {}", credentials.email());

		return userRepository.findOneByEmail(credentials.email())
				.switchIfEmpty(Mono.error(new NoEntryFoundException("Invalid credentials")))
				.publishOn(Schedulers.boundedElastic())
				.flatMap(user -> {
					logger.info("Checking credentials for user with email: {}", credentials.email());

					if (!passwordManager.verify(credentials.password(), user.getPassword())) {
						logger.warn("Invalid credentials for user with email: {}", credentials.email());
						return Mono.error(new InvalidEntryDataException("Invalid credentials"));
					}

					Optional<AuthResponse> response = Optional.empty();
					if (user instanceof Voter voter) {
						var token = jwtGenerator.generate(voter.getName(), voter.role());
						var votes = getVotesForUserUseCase.execute(voter).collectList().block();
						var userDto = voter.toDTO(votes);

						logger.info("User with email: {} logged in successfully", credentials.email());
						response = Optional.of(new AuthResponse(token, userDto));
					} else if (user instanceof Organizer organizer) {
						var token = jwtGenerator.generate(organizer.getName(), organizer.role());
						var userDto = organizer.toDTO();

						logger.info("User with email: {} logged in successfully", credentials.email());
						response = Optional.of(new AuthResponse(token, userDto));
					}

					return response.map(Mono::just).orElseGet(() -> Mono.error(new InvalidEntryDataException("Invalid credentials")));
				});
	}
}