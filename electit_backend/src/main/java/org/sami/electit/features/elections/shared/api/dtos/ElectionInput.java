package org.sami.electit.features.elections.shared.api.dtos;

import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;
import org.sami.electit.features.candidates.shared.api.dtos.CandidateInput;

import java.util.List;

public record ElectionInput(
		@NotEmpty(message = "Title is required")
		@Size(min = 3, max = 50, message = "Title must be between 3 and 50 characters")
        String title,
		@NotEmpty(message = "Description is required")
		@Size(min = 10, max = 500, message = "Description must be between 10 and 500 characters")
		String description,
		@NotEmpty(message = "Start timestamp is required")
        Long startTimestamp,
		@NotEmpty(message = "Duration is required")
        Long duration,
        List<CandidateInput> candidates
) {}
