package org.sami.electit.features.users.shared.api.dtos;

public record UserDTO(
        VoterDTO voter,
        OrganizerDTO organizer
) {}
