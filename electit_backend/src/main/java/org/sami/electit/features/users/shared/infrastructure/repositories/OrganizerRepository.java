package org.sami.electit.features.users.shared.infrastructure.repositories;

import org.sami.electit.shared.domain.entities.Organizer;
import org.springframework.data.neo4j.repository.ReactiveNeo4jRepository;
import org.springframework.data.neo4j.repository.query.Query;
import org.springframework.data.repository.query.Param;
import reactor.core.publisher.Mono;

public interface OrganizerRepository extends ReactiveNeo4jRepository<Organizer, Long> {
	Mono<Organizer> findOneByEmail(String email);
	Mono<Organizer> findOneByName(String name);

	@Query("""
		MATCH (o:User:Organizer)-[:MANAGES]->(e:Election)
		WHERE ID(e) = $electionId
		RETURN o
	""")
	Mono<Organizer> findOrganizerForElection(@Param("electionId") Long electionId);
}
