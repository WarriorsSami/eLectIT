package org.sami.electit.shared.domain.entities;

import org.springframework.data.neo4j.core.schema.GeneratedValue;
import org.springframework.data.neo4j.core.schema.Id;
import org.springframework.data.neo4j.core.schema.Node;
import org.springframework.data.neo4j.core.schema.Relationship;

import java.time.LocalDateTime;
import java.util.List;

@Node
public record Election(
     @Id @GeneratedValue Long id,
     String name,
     String description,
     LocalDateTime startDateTime,
     Long duration,
     @Relationship(type = "HAS_CANDIDATE") List<Candidate> candidates,
     @Relationship(type = "RECORDED_VOTE") List<Vote> recordedVotes
) {}