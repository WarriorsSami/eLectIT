package org.sami.electit.shared.domain.entities;

import org.springframework.data.neo4j.core.schema.RelationshipId;
import org.springframework.data.neo4j.core.schema.RelationshipProperties;
import org.springframework.data.neo4j.core.schema.TargetNode;

@RelationshipProperties
public record Vote(
		@RelationshipId Long id,
		Long createdAt,
		@TargetNode Candidate candidate
) {}
