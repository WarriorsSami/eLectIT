package org.sami.electit.features.users.shared.api.dtos;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;

public record LoginInput(
		@NotEmpty(message = "Email is required")
		@Email(message = "Email is invalid")
		String email,
		String password
) {}
