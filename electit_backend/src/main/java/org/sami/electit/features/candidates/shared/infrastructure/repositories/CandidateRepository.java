package org.sami.electit.features.candidates.shared.infrastructure.repositories;

import org.sami.electit.shared.domain.entities.Candidate;
import org.springframework.data.neo4j.repository.ReactiveNeo4jRepository;
import org.springframework.data.neo4j.repository.query.Query;
import org.springframework.data.repository.query.Param;
import reactor.core.publisher.Mono;

public interface CandidateRepository extends ReactiveNeo4jRepository<Candidate, Long> {
    Mono<Candidate> findOneByName(String name);
    @Query("MATCH (v:User:Voter)-[r:CASTED_VOTE]->(c:Candidate)-[:PARTICIPATES_IN]->(e:Election) " +
            "WHERE id(c)=$candidateId AND id(e)=$electionId " +
            "RETURN count(r)")
    Mono<Integer> countVotesForCandidatePerElection(@Param("candidateId") Long candidateId, @Param("electionId") Long electionId);
}
