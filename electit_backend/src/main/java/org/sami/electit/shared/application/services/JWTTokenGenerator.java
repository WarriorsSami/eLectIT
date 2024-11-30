package org.sami.electit.shared.application.services;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import org.sami.electit.shared.api.security.JWTTokenUtils;
import org.sami.electit.shared.domain.contracts.TokenGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class JWTTokenGenerator implements TokenGenerator {
    @Autowired
    private JWTTokenUtils tokenUtils;

    @Override
    public String generate(Object id, Object role) {
        return JWT.create()
                .withSubject(id.toString())
                .withClaim("role", role.toString())
                .withExpiresAt(new Date(System.currentTimeMillis() + tokenUtils.getExpirationTime()))
                .sign(Algorithm.HMAC512(tokenUtils.getSecret().getBytes()));
    }
}
