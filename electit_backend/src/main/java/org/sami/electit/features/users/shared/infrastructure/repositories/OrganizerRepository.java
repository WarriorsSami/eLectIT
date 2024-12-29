package org.sami.electit.features.users.shared.infrastructure.repositories;

import org.sami.electit.shared.domain.entities.Organizer;
import org.springframework.data.neo4j.repository.ReactiveNeo4jRepository;
import reactor.core.publisher.Mono;

public interface OrganizerRepository extends ReactiveNeo4jRepository<Organizer, Long> {
	Mono<Organizer> findOneByEmail(String email);
	Mono<Organizer> findOneByName(String name);
}
