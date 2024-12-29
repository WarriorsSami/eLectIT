package org.sami.electit.features.users.register.api;

import org.sami.electit.features.users.register.application.RegisterUseCase;
import org.sami.electit.features.users.shared.api.dtos.AuthResponse;
import org.sami.electit.features.users.shared.api.dtos.UserInput;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.MutationMapping;
import org.springframework.stereotype.Controller;
import reactor.core.publisher.Mono;

@Controller
public class RegisterEndpoint {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private RegisterUseCase registerUseCase;

	@MutationMapping
	public Mono<AuthResponse> register(@Argument UserInput credentials) {
		return registerUseCase.execute(credentials);
	}
}
