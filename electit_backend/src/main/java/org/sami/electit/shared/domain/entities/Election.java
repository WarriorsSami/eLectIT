package org.sami.electit.shared.domain.entities;

import org.sami.electit.features.elections.shared.api.dtos.ElectionDTO;
import org.sami.electit.features.elections.shared.api.dtos.ElectionInput;
import org.springframework.data.neo4j.core.schema.GeneratedValue;
import org.springframework.data.neo4j.core.schema.Id;
import org.springframework.data.neo4j.core.schema.Node;

@Node
public record Election(
     @Id @GeneratedValue Long id,
     String title,
     String description,
     Long startTimestamp,
     Long duration
) {
     public static Election fromDTO(ElectionInput electionInput) {
          return new Election(null, electionInput.title(), electionInput.description(), electionInput.startTimestamp(), electionInput.duration());
     }

     public ElectionDTO toDTO() {
          return new ElectionDTO(id(), title(), description(), startTimestamp(), duration());
     }
}