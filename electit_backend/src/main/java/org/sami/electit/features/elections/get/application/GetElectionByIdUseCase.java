package org.sami.electit.features.elections.get.application;

import org.sami.electit.features.elections.shared.infrastructure.repositories.ElectionRepository;
import org.sami.electit.shared.domain.entities.Election;
import org.sami.electit.shared.domain.exceptions.NoEntryFoundException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import reactor.core.publisher.Mono;

@Service
public class GetElectionByIdUseCase {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private ElectionRepository electionRepository;

    public Mono<Election> execute(Long id) throws NoEntryFoundException {
        logger.info("Getting election with id: {}", id);

        return electionRepository.findById(id)
                .switchIfEmpty(Mono.error(new NoEntryFoundException("Election not found")));
    }
}
