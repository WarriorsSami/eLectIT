package org.sami.electit.features.elections.shared.infrastructure.repositories;

import org.sami.electit.shared.domain.entities.Election;
import org.springframework.data.neo4j.repository.ReactiveNeo4jRepository;

import reactor.core.publisher.Mono;

public interface ElectionRepository extends ReactiveNeo4jRepository<Election, Long> {
    Mono<Election> findOneByTitle(String title);
}
