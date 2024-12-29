package org.sami.electit.features.users.login.application;

import org.sami.electit.features.users.shared.api.dtos.AuthResponse;
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

import java.util.Optional;

@Service
public class LoginUseCase {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private UserRepository userRepository;
	@Autowired
	private PasswordManager passwordManager;
	@Autowired
	private JWTTokenGenerator jwtGenerator;

	@Transactional
	public Mono<AuthResponse> execute(String email, String password) throws NoEntryFoundException, InvalidEntryDataException {
		logger.info("Login attempt for user with email: {}", email);

		return userRepository.findOneByEmail(email)
				.switchIfEmpty(Mono.error(new NoEntryFoundException("User not found")))
				.flatMap(user -> {
					logger.info("Checking credentials for user with email: {}", email);

					if (!passwordManager.verify(password, user.getPassword())) {
						logger.warn("Invalid password for user with email: {}", email);
						return Mono.error(new InvalidEntryDataException("Invalid password"));
					}

					Optional<AuthResponse> response = Optional.empty();
					if (user instanceof Voter voter) {
						var token = jwtGenerator.generate(voter.getName(), voter.role());
						var userDto = voter.toDTO();

						logger.info("User with email: {} logged in successfully", email);
						response = Optional.of(new AuthResponse(token, userDto));
					} else if (user instanceof Organizer organizer) {
						var token = jwtGenerator.generate(organizer.getName(), organizer.role());
						var userDto = organizer.toDTO();

						logger.info("User with email: {} logged in successfully", email);
						response = Optional.of(new AuthResponse(token, userDto));
					}

					return response.map(Mono::just).orElseGet(() -> Mono.error(new InvalidEntryDataException("Invalid credentials")));
				});
	}
}