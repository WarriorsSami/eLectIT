package org.sami.electit.features.users.shared.infrastructure.repositories;

import org.sami.electit.shared.domain.entities.User;
import org.springframework.data.neo4j.repository.ReactiveNeo4jRepository;

import reactor.core.publisher.Mono;

public interface UserRepository extends ReactiveNeo4jRepository<User, Long> {
    Mono<User> findOneByEmail(String email);
    Mono<User> findOneByName(String name);
}
