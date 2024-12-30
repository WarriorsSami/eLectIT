package org.sami.electit.features.users.shared.api.dtos;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;

import static org.sami.electit.shared.domain.contracts.Constants.PASSWORD_REGEX;

public record OrganizerInput(
		@NotEmpty(message = "Name is required")
		@Size(min = 3, max = 255, message = "Name must be between 3 and 255 characters")
		String name,
		@NotEmpty(message = "Email is required")
		@Email(message = "Email is invalid")
		String email,
		@NotEmpty(message = "Password is required")
		@Size(min = 8, message = "Password must contain at least 8 characters")
		@Pattern(
				regexp = PASSWORD_REGEX,
				message = "Password must contain at least 8 characters, one uppercase, one lowercase, one digit and one special character"
		)
		String password
) {}
