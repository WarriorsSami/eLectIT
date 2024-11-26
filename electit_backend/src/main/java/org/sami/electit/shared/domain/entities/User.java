package org.sami.electit.shared.domain.entities;

import org.sami.electit.shared.api.dtos.UserDTO;
import org.springframework.data.neo4j.core.schema.GeneratedValue;
import org.springframework.data.neo4j.core.schema.Id;
import org.springframework.data.neo4j.core.schema.Node;
import org.springframework.data.neo4j.core.schema.Relationship;
import org.springframework.data.neo4j.core.schema.Relationship.Direction;

import java.util.List;

@Node
public record User(
        @Id @GeneratedValue Long id,
        String name,
        String email,
        String password,
        String nationalId,
        Role role,
        @Relationship(type = "VOTED_IN", direction = Direction.OUTGOING)
        List<Election> votedInElections,
        @Relationship(type = "VOTED_FOR", direction = Direction.OUTGOING)
        List<Candidate> votedForCandidates,
        @Relationship(type = "CREATED", direction = Direction.OUTGOING)
        List<Election> createdElections,
        @Relationship(type = "CAST", direction = Direction.OUTGOING)
        List<Vote> castVotes
) {
        public UserDTO toDTO() {
                return new UserDTO(id, name, email, nationalId, role);
        }
}
