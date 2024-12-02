package org.sami.electit.features.users.login.api;

import org.sami.electit.features.users.login.application.LoginUseCase;
import org.sami.electit.features.users.shared.api.dtos.AuthResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.stereotype.Controller;
import reactor.core.publisher.Mono;

@Controller
public class LoginEndpoint {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private LoginUseCase loginUseCase;

    @QueryMapping
    public Mono<AuthResponse> login(@Argument String email, @Argument String password) {
        return loginUseCase.execute(email, password);
    }
}
