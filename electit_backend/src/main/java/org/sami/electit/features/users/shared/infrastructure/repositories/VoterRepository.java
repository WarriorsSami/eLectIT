package org.sami.electit.features.users.shared.infrastructure.repositories;

import org.sami.electit.shared.domain.entities.Voter;
import org.springframework.data.neo4j.repository.ReactiveNeo4jRepository;
import org.springframework.data.neo4j.repository.query.Query;
import org.springframework.data.repository.query.Param;
import reactor.core.publisher.Mono;

public interface VoterRepository extends ReactiveNeo4jRepository<Voter, Long> {
	Mono<Voter> findOneByEmail(String email);

	Mono<Voter> findOneByName(String name);

	Mono<Voter> findOneByNationalId(String nationalId);

	@Query("MATCH (v:User:Voter)-[r:CASTED_VOTE]->(c:Candidate)-[:PARTICIPATES_IN]->(e:Election) " +
			"WHERE id(v)=$userId AND id(e)=$electionId AND id(c)=$candidateId " +
			"RETURN count(r) > 0")
	Mono<Boolean> checkIfUserHasVoted(
			@Param("userId") Long userId,
			@Param("electionId") Long electionId,
			@Param("candidateId") Long candidateId);
}
