package org.sami.electit.features.register.application;

import org.sami.electit.shared.api.dtos.AuthResponse;
import org.sami.electit.shared.api.dtos.UserInput;
import org.sami.electit.shared.application.services.JWTGenerator;
import org.sami.electit.shared.application.services.PasswordManager;
import org.sami.electit.shared.domain.entities.User;
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
    private JWTGenerator jwtGenerator;

    public AuthResponse execute(UserInput credentials) {
        var user = userRepository.findOneByEmail(credentials.email());
        if (user != null) {
            throw new RuntimeException("User already exists");
        }

        var hashedPassword = passwordManager.hash(credentials.password());
        var newUser = User.fromCredentials(credentials, hashedPassword);
        userRepository.save(newUser);

        var token = jwtGenerator.generate(newUser);

        var userDto = newUser.toDTO();
        return new AuthResponse(token, userDto);
    }
}
