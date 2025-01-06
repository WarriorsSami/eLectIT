package org.sami.electit.features.candidates.shared.api.dtos;

import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;

import static org.sami.electit.shared.domain.contracts.Constants.PICTURE_URL_REGEX;

public record CandidateInput(
		@NotEmpty(message = "Name is required")
		@Size(min = 3, max = 50, message = "Name must be between 3 and 50 characters")
        String name,
		@NotEmpty(message = "Party is required")
		@Size(min = 3, max = 30, message = "Party must be between 3 and 30 characters")
        String party,
		@NotEmpty(message = "Manifesto is required")
		@Size(min = 10, max = 500, message = "Manifesto must be between 10 and 500 characters")
        String manifesto,
		@Pattern(
				regexp = PICTURE_URL_REGEX,
				message = "Picture URL must be a valid URL ending with jpg, gif or png"
		)
        String pictureUrl
) {}
