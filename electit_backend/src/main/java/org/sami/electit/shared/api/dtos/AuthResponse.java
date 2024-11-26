package org.sami.electit.shared.api.dtos;

public record AuthResponse(
        String token,
        UserDTO user
) {}
