package org.sami.electit.features.users.shared.api.dtos;

public record UserDTO(
        VoterDTO voter,
        OrganizerDTO organizer
) {
	public static UserDTO fromVoter(VoterDTO voter) {
		return new UserDTO(voter, null);
	}

	public static UserDTO fromOrganizer(OrganizerDTO organizer) {
		return new UserDTO(null, organizer);
	}
}
