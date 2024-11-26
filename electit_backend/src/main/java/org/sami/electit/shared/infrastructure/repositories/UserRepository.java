package org.sami.electit.shared.infrastructure.repositories;

import org.sami.electit.shared.domain.entities.User;
import org.springframework.data.neo4j.repository.Neo4jRepository;

public interface UserRepository extends Neo4jRepository<User, Long> {
    User findOneByEmail(String email);
    User findOneByNationalId(String nationalId);
}
