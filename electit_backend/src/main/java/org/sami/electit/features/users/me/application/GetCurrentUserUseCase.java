package org.sami.electit.features.users.me.application;

import org.sami.electit.features.users.shared.api.dtos.UserDTO;
import org.sami.electit.features.users.shared.infrastructure.repositories.UserRepository;
import org.sami.electit.shared.domain.exceptions.NoEntryFoundException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import reactor.core.publisher.Mono;

@Service
public class GetCurrentUserUseCase {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private UserRepository userRepository;

    @Transactional
    public Mono<UserDTO> execute() throws NoEntryFoundException {
        var authentication = SecurityContextHolder.getContext().getAuthentication();
        var name = authentication.getName();

        logger.info("Getting current user with name: {}", name);

        return userRepository.findOneByName(name)
            .map(user -> {
                logger.info("Current user with name: {} found", name);
                return user.toDTO();
            })
            .switchIfEmpty(Mono.error(new NoEntryFoundException("User not found")));
    }
}
