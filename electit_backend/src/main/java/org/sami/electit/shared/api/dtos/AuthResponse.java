package org.sami.electit.shared.api.dtos;

import org.sami.electit.shared.domain.entities.User;

public record AuthResponse(
        String token,
        User user
) {}
