package org.sami.electit.shared.domain.entities;

import org.sami.electit.features.users.shared.api.dtos.OrganizerDTO;
import org.sami.electit.features.users.shared.api.dtos.OrganizerInput;
import org.sami.electit.features.users.shared.api.dtos.UserDTO;
import org.springframework.data.neo4j.core.schema.Node;
import org.springframework.data.neo4j.core.schema.Relationship;

import java.util.Set;

@Node("Organizer")
public class Organizer extends User {
	@Relationship(type = "MANAGES", direction = Relationship.Direction.OUTGOING)
	private Set<Election> elections;

	public Organizer(Long id, String name, String email, String password, Set<Election> elections) {
		super(id, name, email, password);
		this.elections = elections;
	}

	public Set<Election> getElections() {
		return elections;
	}

	public void setElections(Set<Election> elections) {
		this.elections = elections;
	}

	public static Organizer fromCredentials(OrganizerInput credentials, String hashedPassword) {
		return new Organizer(null, credentials.name(), credentials.email(), hashedPassword, Set.of());
	}

	public UserDTO toDTO() {
		return new UserDTO(
				null,
				new OrganizerDTO(getId(), getName(), getEmail(), Role.ORGANIZER, elections.stream().map(e -> e.toDTO(null, 0, null)).toList()));
	}

	public Role role() {
		return Role.ORGANIZER;
	}
}
