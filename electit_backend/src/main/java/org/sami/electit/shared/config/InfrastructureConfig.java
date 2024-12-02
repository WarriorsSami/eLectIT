package org.sami.electit.shared.config;

import org.neo4j.cypherdsl.core.renderer.Dialect;
import org.neo4j.driver.Driver;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.neo4j.core.DatabaseSelection;
import org.springframework.data.neo4j.core.ReactiveDatabaseSelectionProvider;
import org.springframework.data.neo4j.core.transaction.ReactiveNeo4jTransactionManager;
import reactor.core.publisher.Mono;

@Configuration
public class InfrastructureConfig {
    @Bean
    ReactiveDatabaseSelectionProvider reactiveDatabaseSelectionProvider(@Value("${spring.data.neo4j.database}") String database) {
        return () -> {
            var neo4jVersion = System.getenv("NEO4J_VERSION");
            if (neo4jVersion == null || (neo4jVersion.startsWith("4") || neo4jVersion.startsWith("5"))) {
                return Mono.just(DatabaseSelection.byName(database));
            }
            return Mono.just(DatabaseSelection.undecided());
        };
    }

    @Bean
    org.neo4j.cypherdsl.core.renderer.Configuration cypherDslConfiguration() {
        var dialect = Dialect.NEO4J_4;
        var neo4jVersion = System.getenv("NEO4J_VERSION");
        if (neo4jVersion == null || neo4jVersion.startsWith("5")) {
            dialect = Dialect.NEO4J_5;
        }

        return org.neo4j.cypherdsl.core.renderer.Configuration.newConfig()
                .withDialect(dialect).build();
    }

    @Bean
    ReactiveNeo4jTransactionManager reactiveTransactionManager(Driver driver, ReactiveDatabaseSelectionProvider databaseSelectionProvider) {
        return new ReactiveNeo4jTransactionManager(driver, databaseSelectionProvider);
    }
}