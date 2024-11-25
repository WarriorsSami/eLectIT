package org.sami.electit.features.login.application;

import org.sami.electit.shared.api.dtos.AuthResponse;
import org.sami.electit.shared.infrastructure.repositories.UserRepository;
import org.springframework.stereotype.Service;

@Service
public class LoginUseCase {
    private final UserRepository userRepository;

    public LoginUseCase(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public AuthResponse execute(String email, String password) {
        // search for user by email
        // if user is found, check if password is correct (use bcrypt)
        // if password is correct, generate a JWT token and return it with the user
        return new AuthResponse("token", null);
    }
}
