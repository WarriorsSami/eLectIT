package org.sami.electit.features.elections.shared.api.dtos;

import java.util.List;

import org.sami.electit.features.candidates.shared.api.dtos.CandidateDTO;

public record ElectionDTO(
        Long id,
        String title,
        String description,
        Long startTimestamp,
        Long duration,
        List<CandidateDTO> candidates,
		CandidateDTO winner,
		Integer votesCount
) {}
