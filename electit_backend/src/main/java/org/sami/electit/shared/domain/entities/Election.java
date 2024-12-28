package org.sami.electit.shared.domain.entities;

import java.util.HashSet;
import java.util.Set;

import org.sami.electit.features.elections.shared.api.dtos.ElectionDTO;
import org.sami.electit.features.elections.shared.api.dtos.ElectionInput;
import org.springframework.data.neo4j.core.schema.GeneratedValue;
import org.springframework.data.neo4j.core.schema.Id;
import org.springframework.data.neo4j.core.schema.Node;
import org.springframework.data.neo4j.core.schema.Relationship;

@Node
public record Election(
        @Id @GeneratedValue Long id,
        String title,
        String description,
        Long startTimestamp,
        Long duration,
        @Relationship(type = "PARTICIPATES_IN", direction = Relationship.Direction.INCOMING)
        Set<Candidate> candidates
) {
    public static Election fromDTO(ElectionInput electionInput) {
        return new Election(null, electionInput.title(), electionInput.description(), electionInput.startTimestamp(), electionInput.duration(), new HashSet<>());
    }

    public ElectionDTO toDTO() {
        return new ElectionDTO(id(), title(), description(), startTimestamp(), duration(), candidates.stream().map(Candidate::toDTO).toList());
    }
}