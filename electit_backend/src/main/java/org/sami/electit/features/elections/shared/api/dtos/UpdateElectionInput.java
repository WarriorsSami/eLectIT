package org.sami.electit.features.elections.shared.api.dtos;

import jakarta.validation.constraints.Size;

public record UpdateElectionInput(
		@Size(min = 3, max = 50, message = "Title must be between 3 and 50 characters")
        String title,
		@Size(min = 10, max = 500, message = "Description must be between 10 and 500 characters")
        String description,
        Long startTimestamp,
        Long duration
) {}
