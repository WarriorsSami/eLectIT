package org.sami.electit.shared.domain.entities;

import org.sami.electit.features.users.shared.api.dtos.VoteDTO;
import org.springframework.data.neo4j.core.schema.RelationshipId;
import org.springframework.data.neo4j.core.schema.RelationshipProperties;
import org.springframework.data.neo4j.core.schema.TargetNode;

@RelationshipProperties
public record Vote(
		@RelationshipId Long id,
		Long createdAt,
		@TargetNode Candidate candidate
) {
	public VoteDTO toDTO(Election election) {
		return new VoteDTO(
				createdAt,
				election.toDTO(null, 0, null),
				candidate.toDTO(0)
		);
	}
}
