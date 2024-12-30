package org.sami.electit.features.elections.queries.get.application;

import org.sami.electit.features.elections.shared.api.dtos.ElectionDTO;
import org.sami.electit.features.elections.shared.application.GetStatisticsForElectionUseCase;
import org.sami.electit.features.elections.shared.infrastructure.repositories.ElectionRepository;
import org.sami.electit.features.users.shared.infrastructure.repositories.UserRepository;
import org.sami.electit.shared.domain.exceptions.NoEntryFoundException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;

import reactor.core.publisher.Mono;

@Service
public class GetElectionByIdUseCase {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private GetStatisticsForElectionUseCase getStatisticsForElectionUseCase;
    @Autowired
    private ElectionRepository electionRepository;
    @Autowired
    private UserRepository userRepository;

    public Mono<ElectionDTO> execute(Authentication claims, Long id) throws NoEntryFoundException {
        logger.info("Getting election with id: {}", id);

        var username = claims.getName();
        var user = userRepository.findOneByName(username)
                .blockOptional()
                .orElseThrow();

        return electionRepository.findByIdWithCandidates(id)
                .flatMap(e -> getStatisticsForElectionUseCase.execute(user, e))
                .switchIfEmpty(Mono.error(new NoEntryFoundException("Election not found")));
    }
}
