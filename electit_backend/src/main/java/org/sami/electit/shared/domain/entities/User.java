package org.sami.electit.shared.domain.entities;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.sami.electit.features.elections.shared.api.dtos.ElectionDTO;
import org.sami.electit.features.users.shared.api.dtos.UserDTO;
import org.sami.electit.features.users.shared.api.dtos.UserInput;
import org.springframework.data.neo4j.core.schema.GeneratedValue;
import org.springframework.data.neo4j.core.schema.Id;
import org.springframework.data.neo4j.core.schema.Node;
import org.springframework.data.neo4j.core.schema.Relationship;

@Node
public record User(
    @Id @GeneratedValue Long id,
    String name,
    String email,
    String password,
    String nationalId,
    Role role,
    @Relationship(type = "CREATES") Set<Election> elections,
    @Relationship(type = "VOTES") Set<Candidate> candidates
) {
    public void addCreatedElection(Election election) {
        elections.add(election);
    }

    public List<ElectionDTO> getCreatedElections() {
        return elections.stream().map(Election::toDTO).toList();
    }

    public UserDTO toDTO() {
        return new UserDTO(id, name, email, nationalId, role, new ArrayList<>());
    }

    public static User fromCredentials(UserInput credentials, String hashedPassword) {
        return new User(null, credentials.name(), credentials.email(), hashedPassword, credentials.nationalId(), credentials.role(), new HashSet<>(), new HashSet<>());
    }
}
