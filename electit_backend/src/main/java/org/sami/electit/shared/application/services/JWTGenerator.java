package org.sami.electit.shared.application.services;

import org.sami.electit.shared.domain.entities.User;
import org.springframework.stereotype.Service;

@Service
public class JWTGenerator {
    public String generate(User user) {
        return "token";
    }
}
