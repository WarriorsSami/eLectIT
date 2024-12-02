package org.sami.electit.shared.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class PasswordManager {
    private final PasswordEncoder passwordEncoder;

    @Autowired
    public PasswordManager(PasswordEncoder passwordEncoder) {
        this.passwordEncoder = passwordEncoder;
    }

    public String hash(String password) {
        return passwordEncoder.encode(password);
    }

    public boolean verify(String password, String hashedPassword) {
        return passwordEncoder.matches(password, hashedPassword);
    }
}
