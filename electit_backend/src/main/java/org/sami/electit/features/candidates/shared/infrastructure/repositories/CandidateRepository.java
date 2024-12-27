package org.sami.electit.features.candidates.shared.infrastructure.repositories;

import org.sami.electit.shared.domain.entities.Candidate;
import org.springframework.data.neo4j.repository.ReactiveNeo4jRepository;
import reactor.core.publisher.Mono;

public interface CandidateRepository extends ReactiveNeo4jRepository<Candidate, Long> {
    Mono<Candidate> findOneByName(String name);
}
