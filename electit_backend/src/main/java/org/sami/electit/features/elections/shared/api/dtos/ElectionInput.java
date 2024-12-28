package org.sami.electit.features.elections.shared.api.dtos;

import org.sami.electit.features.candidates.shared.api.dtos.CandidateInput;

import java.util.List;

public record ElectionInput(
        String title,
        String description,
        Long startTimestamp,
        Long duration,
        List<CandidateInput> candidates
) {}
