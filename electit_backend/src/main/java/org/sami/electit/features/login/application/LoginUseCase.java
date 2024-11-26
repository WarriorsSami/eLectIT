package org.sami.electit.features.login.application;

import org.sami.electit.shared.api.dtos.AuthResponse;
import org.sami.electit.shared.application.services.JWTGenerator;
import org.sami.electit.shared.application.services.PasswordManager;
import org.sami.electit.shared.infrastructure.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginUseCase {
    private final UserRepository userRepository;
    private final PasswordManager passwordManager;
    private final JWTGenerator jwtGenerator;

    @Autowired
    public LoginUseCase(UserRepository userRepository, PasswordManager passwordManager, JWTGenerator jwtGenerator) {
        this.userRepository = userRepository;
        this.passwordManager = passwordManager;
        this.jwtGenerator = jwtGenerator;
    }

    public AuthResponse execute(String email, String password) throws RuntimeException {
        var user = userRepository.findOneByEmail(email);
        if (user == null) {
            throw new RuntimeException("User not found");
        }

        if (passwordManager.verify(password, user.password())) {
            var token = jwtGenerator.generate(user);
            var userDto = user.toDTO();
            return new AuthResponse(token, userDto);
        } else {
            throw new RuntimeException("Invalid password");
        }
    }
}