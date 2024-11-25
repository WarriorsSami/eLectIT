package org.sami.electit.features.register.application;

import org.sami.electit.shared.infrastructure.repositories.UserRepository;
import org.springframework.stereotype.Service;

@Service
public class RegisterUseCase {
    private final UserRepository userRepository;

    public RegisterUseCase(UserRepository userRepository) {
        this.userRepository = userRepository;
    }
}
