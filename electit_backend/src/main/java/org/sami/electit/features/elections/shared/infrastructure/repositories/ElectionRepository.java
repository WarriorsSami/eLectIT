package org.sami.electit.features.elections.shared.infrastructure.repositories;

import org.sami.electit.shared.domain.entities.Election;
import org.springframework.data.neo4j.repository.ReactiveNeo4jRepository;
import org.springframework.data.neo4j.repository.query.Query;
import org.springframework.data.repository.query.Param;

import reactor.core.publisher.Mono;

public interface ElectionRepository extends ReactiveNeo4jRepository<Election, Long> {
    @Query("""
           MATCH (e:Election) WHERE id(e)=$id
           OPTIONAL MATCH (e)<-[r:PARTICIPATES_IN]-(c:Candidate)
           RETURN e, collect(r), collect(c)
    """)
    Mono<Election> findByIdWithCandidates(@Param("id") Long id);

    @Query("""
           MATCH (:User:Voter)-[r:CASTED_VOTE]->(:Candidate)-[:PARTICIPATES_IN]->(e:Election)
           WHERE id(e)=$electionId
           RETURN count(r)
    """)
    Mono<Integer> countVotesForElection(@Param("electionId") Long electionId);

    @Query("""
           MATCH (c:Candidate)-[:PARTICIPATES_IN]->(e:Election)
           WHERE id(c)=$candidateId
           RETURN e
    """)
    Mono<Election> findElectionForCandidate(@Param("candidateId") Long candidateId);
}
