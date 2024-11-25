package org.sami.electit.features.login.api;

import org.sami.electit.features.login.application.LoginUseCase;
import org.sami.electit.shared.api.dtos.AuthResponse;
import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.stereotype.Controller;

@Controller
public class LoginEndpoint {
    private final LoginUseCase loginUseCase;

    public LoginEndpoint(LoginUseCase loginUseCase) {
        this.loginUseCase = loginUseCase;
    }

    @QueryMapping
    public AuthResponse login(@Argument String email, @Argument String password) {
        return loginUseCase.execute(email, password);
    }
}
