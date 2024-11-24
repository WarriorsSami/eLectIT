package org.sami.electit.shared.domain.entities;

import org.springframework.data.neo4j.core.schema.GeneratedValue;
import org.springframework.data.neo4j.core.schema.Id;
import org.springframework.data.neo4j.core.schema.Node;
import org.springframework.data.neo4j.core.schema.Relationship;

import java.util.List;

@Node
public record User(
        @Id @GeneratedValue Long id,
        String name,
        String email,
        String password,
        String nationalId,
        Role role,
        @Relationship(type = "VOTED_IN") List<Election> votedInElections,
        @Relationship(type = "VOTED_FOR") List<Candidate> votedForCandidates,
        @Relationship(type = "CREATED") List<Election> createdElections,
        @Relationship(type = "CAST") List<Vote> castVotes
) {}
