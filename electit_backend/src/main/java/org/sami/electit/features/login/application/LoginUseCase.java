package org.sami.electit.features.login.application;

import org.sami.electit.shared.api.dtos.AuthResponse;
import org.sami.electit.shared.application.services.JWTTokenGenerator;
import org.sami.electit.shared.application.services.PasswordManager;
import org.sami.electit.shared.domain.exceptions.InvalidEntryDataException;
import org.sami.electit.shared.domain.exceptions.NoEntryFoundException;
import org.sami.electit.shared.infrastructure.repositories.UserRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginUseCase {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private UserRepository userRepository;
    @Autowired
    private PasswordManager passwordManager;
    @Autowired
    private JWTTokenGenerator jwtGenerator;

    public AuthResponse execute(String email, String password) throws RuntimeException {
        logger.info("Login attempt for user with email: {}", email);

        var user = userRepository.findOneByEmail(email);
        if (user == null) {
            logger.warn("User with email: {} not found", email);
            throw new NoEntryFoundException("User not found");
        }

        logger.info("Checking credentials for user with email: {}", email);
        if (passwordManager.verify(password, user.getPassword())) {
            var token = jwtGenerator.generate(user.getName(), user.getRole());
            var userDto = user.toDTO();
            logger.info("User with email: {} logged in successfully", email);
            return new AuthResponse(token, userDto);
        } else {
            logger.warn("Invalid password for user with email: {}", email);
            throw new InvalidEntryDataException("Invalid password");
        }
    }
}