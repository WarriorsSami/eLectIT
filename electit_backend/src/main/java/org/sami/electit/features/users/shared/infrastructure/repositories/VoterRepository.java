package org.sami.electit.features.users.shared.infrastructure.repositories;

import org.sami.electit.shared.domain.entities.Voter;
import org.springframework.data.neo4j.repository.ReactiveNeo4jRepository;
import reactor.core.publisher.Mono;

public interface VoterRepository extends ReactiveNeo4jRepository<Voter, Long> {
	Mono<Voter> findOneByEmail(String email);
	Mono<Voter> findOneByName(String name);
	Mono<Voter> findOneByNationalId(String nationalId);
}
