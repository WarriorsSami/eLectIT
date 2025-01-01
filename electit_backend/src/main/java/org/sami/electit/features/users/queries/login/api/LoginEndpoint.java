package org.sami.electit.features.users.queries.login.api;

import org.sami.electit.features.users.queries.login.application.LoginUseCase;
import org.sami.electit.features.users.shared.api.dtos.AuthResponse;
import org.sami.electit.features.users.shared.api.dtos.LoginInput;
import org.sami.electit.shared.domain.exceptions.InvalidEntryDataException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.stereotype.Controller;
import jakarta.validation.Validator;
import reactor.core.publisher.Mono;

@Controller
public class LoginEndpoint {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private LoginUseCase loginUseCase;
	@Autowired
	private Validator validator;

    @QueryMapping
    public Mono<AuthResponse> login(@Argument LoginInput credentials) {
        var violations = validator.validate(credentials);
        if (!violations.isEmpty()) {
            logger.warn("Invalid login input: {}", violations.iterator().next().getMessage());
            return Mono.error(new InvalidEntryDataException("Invalid login input: " + violations.iterator().next().getMessage()));
        }

        return loginUseCase.execute(credentials);
    }
}
