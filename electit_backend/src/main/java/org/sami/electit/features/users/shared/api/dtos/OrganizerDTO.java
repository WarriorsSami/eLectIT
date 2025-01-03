package org.sami.electit.features.users.shared.api.dtos;

import org.sami.electit.features.elections.shared.api.dtos.ElectionDTO;
import org.sami.electit.shared.domain.entities.Role;

import java.util.List;

public record OrganizerDTO(
		Long id,
		String name,
		String email,
		Role role,
		List<ElectionDTO> managedElections
) {
	public static OrganizerDTO copy(OrganizerDTO other, List<ElectionDTO> managedElections) {
		return new OrganizerDTO(
				other.id(),
				other.name(),
				other.email(),
				other.role(),
				managedElections
		);
	}
}
