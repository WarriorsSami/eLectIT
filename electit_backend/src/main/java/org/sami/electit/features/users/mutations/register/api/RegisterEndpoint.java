package org.sami.electit.features.users.mutations.register.api;

import org.sami.electit.features.users.mutations.register.application.RegisterUseCase;
import org.sami.electit.features.users.shared.api.dtos.AuthResponse;
import org.sami.electit.features.users.shared.api.dtos.UserInput;
import org.sami.electit.shared.domain.exceptions.InvalidEntryDataException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.MutationMapping;
import org.springframework.stereotype.Controller;
import reactor.core.publisher.Mono;
import jakarta.validation.Validator;

@Controller
public class RegisterEndpoint {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private RegisterUseCase registerUseCase;
	@Autowired
	private Validator validator;

	@MutationMapping
	public Mono<AuthResponse> register(@Argument UserInput credentials) {
		if (credentials.voter() != null) {
			var violations = validator.validate(credentials.voter());
			if (!violations.isEmpty()) {
				logger.warn("Invalid voter input: {}", violations.iterator().next().getMessage());
				return Mono.error(new InvalidEntryDataException("Invalid voter input: " + violations.iterator().next().getMessage()));
			}
		} else if (credentials.organizer() != null) {
			var violations = validator.validate(credentials.organizer());
			if (!violations.isEmpty()) {
				logger.warn("Invalid organizer input: {}", violations.iterator().next().getMessage());
				return Mono.error(new InvalidEntryDataException("Invalid organizer input: " + violations.iterator().next().getMessage()));
			}
		}

		return registerUseCase.execute(credentials);
	}
}
