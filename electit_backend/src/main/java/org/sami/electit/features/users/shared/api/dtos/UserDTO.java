package org.sami.electit.features.users.shared.api.dtos;

import org.sami.electit.shared.domain.entities.Role;

public record UserDTO(
        Long id,
        String name,
        String email,
        String nationalId,
        Role role
) {}
