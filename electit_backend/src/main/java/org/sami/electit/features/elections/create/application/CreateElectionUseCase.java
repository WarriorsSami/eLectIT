package org.sami.electit.features.elections.create.application;

import org.sami.electit.features.elections.shared.api.dtos.ElectionDTO;
import org.sami.electit.features.elections.shared.api.dtos.ElectionInput;
import org.sami.electit.features.elections.shared.infrastructure.repositories.ElectionRepository;
import org.sami.electit.features.users.shared.infrastructure.repositories.UserRepository;
import org.sami.electit.shared.domain.entities.Election;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import reactor.core.publisher.Mono;

@Service
public class CreateElectionUseCase {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private ElectionRepository electionRepository;
    @Autowired
    private UserRepository userRepository;

    @Transactional
    public Mono<ElectionDTO> execute(ElectionInput electionInput) {
        logger.info("Creating election with title: {}", electionInput.title());

        var authentication = SecurityContextHolder.getContext().getAuthentication();
        var username = authentication.getName();
        var organizer = userRepository.findOneByName(username)
            .blockOptional()
            .orElseThrow();

        return electionRepository.save(Election.fromDTO(electionInput))
            .map(election -> {
                organizer.AddCreatedElection(election);
                userRepository.save(organizer).block();

                logger.info("Election with title: {} created", election.title());
                return election.toDTO();
            });
    }
}
