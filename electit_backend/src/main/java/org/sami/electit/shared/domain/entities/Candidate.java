package org.sami.electit.shared.domain.entities;

import org.springframework.data.neo4j.core.schema.GeneratedValue;
import org.springframework.data.neo4j.core.schema.Id;
import org.springframework.data.neo4j.core.schema.Node;
import org.springframework.data.neo4j.core.schema.Relationship;
import org.springframework.data.neo4j.core.schema.Relationship.Direction;

import java.util.Set;

@Node
public record Candidate(
        @Id @GeneratedValue Long id,
        String name,
        String motto,
        String portfolioDescription,
        String pictureUrl,
        @Relationship(type = "RECEIVED_VOTE", direction = Direction.OUTGOING)
        Set<Vote> receivedVotes
) {}