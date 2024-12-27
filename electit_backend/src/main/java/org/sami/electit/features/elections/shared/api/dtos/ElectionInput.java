package org.sami.electit.features.elections.shared.api.dtos;

import java.util.List;

public record ElectionInput(
        String title,
        String description,
        Long startTimestamp,
        Long duration,
        List<CandidateInput> candidates
) {}
