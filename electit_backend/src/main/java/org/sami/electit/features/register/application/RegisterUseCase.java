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

@Service
public class RegisterUseCase {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private PasswordManager passwordManager;
    @Autowired
    private JWTTokenGenerator jwtGenerator;

    public AuthResponse execute(UserInput credentials) {
        logger.info("Registering new user with email: {}", credentials.email());
        var user = userRepository.findOneByEmail(credentials.email());
        if (user != null) {
            logger.warn("User with email: {} already exists", credentials.email());
            throw new DuplicateEntryException("User already exists");
        }

        logger.info("Saving new user with email: {}", credentials.email());
        var hashedPassword = passwordManager.hash(credentials.password());
        var newUser = User.fromCredentials(credentials, hashedPassword);
        userRepository.save(newUser);

        var token = jwtGenerator.generate(newUser.getName(), newUser.getRole());
        var userDto = newUser.toDTO();

        logger.info("User with email: {} registered successfully", credentials.email());
        return new AuthResponse(token, userDto);
    }
}
