package org.sami.electit.features.users.shared.api.dtos;

import java.util.List;

import org.sami.electit.shared.domain.entities.Role;

public record VoterDTO(
        Long id,
        String name,
        String email,
        String nationalId,
        Role role,
		List<VoteDTO> votes
) {}
