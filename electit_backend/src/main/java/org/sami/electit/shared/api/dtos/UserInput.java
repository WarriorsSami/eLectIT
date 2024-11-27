package org.sami.electit.shared.api.dtos;

import org.sami.electit.shared.domain.entities.Role;

public record UserInput(
        String name,
        String email,
        String password,
        String nationalId,
        Role role
) {}
