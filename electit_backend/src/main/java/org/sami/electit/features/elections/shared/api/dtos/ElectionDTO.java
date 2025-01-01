package org.sami.electit.features.elections.shared.api.dtos;

import java.util.List;

import org.sami.electit.features.candidates.shared.api.dtos.CandidateDTO;
import org.sami.electit.features.users.shared.api.dtos.VoteDTO;

public record ElectionDTO(
        Long id,
        String title,
        String description,
        Long startTimestamp,
        Long duration,
        List<CandidateDTO> candidates,
		CandidateDTO winner,
		Integer votesCount,
		VoteDTO myVote
) {}
