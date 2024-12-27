package org.sami.electit.shared.domain.entities;

import org.sami.electit.features.elections.shared.api.dtos.CandidateInput;
import org.springframework.data.neo4j.core.schema.GeneratedValue;
import org.springframework.data.neo4j.core.schema.Id;
import org.springframework.data.neo4j.core.schema.Node;
import org.springframework.data.neo4j.core.schema.Relationship;

import java.util.HashSet;
import java.util.Set;

@Node
public record Candidate(
        @Id @GeneratedValue Long id,
        String name,
        String party,
        String manifesto,
        String pictureUrl,
        @Relationship(type = "PARTICIPATES_IN")
        Set<Election> elections
) {
        public static Candidate fromDTO(CandidateInput candidateInput) {
                return new Candidate(null, candidateInput.name(), candidateInput.party(), candidateInput.manifesto(), candidateInput.pictureUrl(), new HashSet<>());
        }
}