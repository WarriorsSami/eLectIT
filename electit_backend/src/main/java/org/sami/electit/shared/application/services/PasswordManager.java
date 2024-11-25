package org.sami.electit.shared.application.services;

import org.springframework.stereotype.Service;

@Service
public class PasswordManager {
    public String hash(String password) {
        return password;
    }

    public boolean verify(String password, String hashedPassword) {
        return hash(password).equals(hashedPassword);
    }
}
