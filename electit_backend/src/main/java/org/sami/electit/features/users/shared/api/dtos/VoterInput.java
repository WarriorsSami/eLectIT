package org.sami.electit.features.users.shared.api.dtos;

import jakarta.validation.constraints.*;

import static org.sami.electit.shared.domain.contracts.Constants.NATIONAL_ID_REGEX;
import static org.sami.electit.shared.domain.contracts.Constants.PASSWORD_REGEX;

public record VoterInput(
		@NotEmpty(message = "Name is required")
		@Size(min = 3, max = 50, message = "Name must be between 3 and 50 characters")
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
		String password,
		@NotEmpty(message = "National ID is required")
		@Pattern(
				regexp = NATIONAL_ID_REGEX,
				message = "National ID must contain 13 digits"
		)
		String nationalId
) {}
