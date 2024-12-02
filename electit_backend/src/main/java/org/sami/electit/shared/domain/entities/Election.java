package org.sami.electit.shared.domain.entities;

import org.sami.electit.features.elections.shared.api.dtos.ElectionDTO;
import org.sami.electit.features.elections.shared.api.dtos.ElectionInput;
import org.sami.electit.features.elections.shared.api.dtos.UpdateElectionInput;
import org.springframework.data.neo4j.core.schema.GeneratedValue;
import org.springframework.data.neo4j.core.schema.Id;
import org.springframework.data.neo4j.core.schema.Node;
import org.springframework.data.neo4j.core.schema.Relationship;
import org.springframework.data.neo4j.core.schema.Relationship.Direction;

import java.time.OffsetDateTime;
import java.util.Set;

@Node
public record Election(
     @Id @GeneratedValue Long id,
     String title,
     String description,
     OffsetDateTime startDateTime,
     Long duration,
     @Relationship(type = "HAS_CANDIDATE", direction = Direction.OUTGOING)
     Set<Candidate> candidates,
     @Relationship(type = "RECORDED_VOTE", direction = Direction.OUTGOING)
     Set<Vote> recordedVotes
) {
     public static Election fromDTO(ElectionInput electionInput) {
          return new Election(null, electionInput.title(), electionInput.description(), electionInput.startDateTime(), electionInput.duration(), null, null);
     }

     public static Election fromDTO(UpdateElectionInput electionInput) {
            return new Election(electionInput.id(), electionInput.title(), electionInput.description(), electionInput.startDateTime(), electionInput.duration(), null, null);
     }

     public ElectionDTO toDTO() {
          return new ElectionDTO(id(), title(), description(), startDateTime(), duration());
     }
}