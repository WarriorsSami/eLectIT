package org.sami.electit.features.users.shared.api.dtos;

import org.sami.electit.shared.domain.entities.Role;

import java.util.Optional;

public record UserInput(
		VoterInput voter,
		OrganizerInput organizer
) {
	public Optional<Role> role() {
		if (voter() != null) {
			return Optional.of(Role.VOTER);
		} else if (organizer() != null) {
			return Optional.of(Role.ORGANIZER);
		} else {
			return Optional.empty();
		}
	}
}
