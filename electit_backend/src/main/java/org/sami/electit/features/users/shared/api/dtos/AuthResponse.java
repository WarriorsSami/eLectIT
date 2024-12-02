package org.sami.electit.features.users.shared.api.dtos;

public record AuthResponse(
        String token,
        UserDTO user
) {}
