package org.sami.electit.features.register.application;

import org.sami.electit.shared.api.dtos.AuthResponse;
import org.sami.electit.shared.api.dtos.UserInput;
import org.sami.electit.shared.application.services.JWTTokenGenerator;
import org.sami.electit.shared.application.services.PasswordManager;
import org.sami.electit.shared.domain.entities.User;
import org.sami.electit.shared.domain.exceptions.DuplicateEntryException;
import org.sami.electit.shared.infrastructure.repositories.UserRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import reactor.core.publisher.Mono;

@Service
public class RegisterUseCase {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private UserRepository userRepository;
    @Autowired
    private PasswordManager passwordManager;
    @Autowired
    private JWTTokenGenerator jwtGenerator;

    @Transactional
    public Mono<AuthResponse> execute(UserInput credentials) {
        logger.info("Registering new user with email: {}", credentials.email());

        return userRepository.findOneByEmail(credentials.email())
            .flatMap(existingUser -> {
                logger.warn("User with email: {} already exists", credentials.email());
                return Mono.<AuthResponse>error(new DuplicateEntryException("User with email: " + credentials.email() + " already exists"));
            })
            .switchIfEmpty(userRepository.findOneByName(credentials.name())
                .flatMap(existingUser -> {
                    logger.warn("User with name: {} already exists", credentials.name());
                    return Mono.<AuthResponse>error(new DuplicateEntryException("User with name: " + credentials.name() + " already exists"));
                })
                .switchIfEmpty(userRepository.findOneByNationalId(credentials.nationalId())
                    .flatMap(existingUser -> {
                        logger.warn("User with national id: {} already exists", credentials.nationalId());
                        return Mono.<AuthResponse>error(new DuplicateEntryException("User with national id: " + credentials.nationalId() + " already exists"));
                    })
                    .switchIfEmpty(Mono.defer(() -> {
                        logger.info("Saving new user with email: {}", credentials.email());

                        var hashedPassword = passwordManager.hash(credentials.password());
                        var newUser = User.fromCredentials(credentials, hashedPassword);

                        return userRepository.save(newUser)
                            .flatMap(savedUser -> {
                                var token = jwtGenerator.generate(savedUser.getName(), savedUser.getRole());
                                var userDto = savedUser.toDTO();
                                logger.info("User with email: {} registered successfully", credentials.email());
                                return Mono.just(new AuthResponse(token, userDto));
                            });
                    })
                )
            ));
    }
}