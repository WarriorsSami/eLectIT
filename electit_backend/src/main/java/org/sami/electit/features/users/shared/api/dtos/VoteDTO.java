package org.sami.electit.features.users.shared.api.dtos;

import org.sami.electit.features.candidates.shared.api.dtos.CandidateDTO;
import org.sami.electit.features.elections.shared.api.dtos.ElectionDTO;

public record VoteDTO(
	Long createdAt,
	ElectionDTO election,
	CandidateDTO candidate
) {}
