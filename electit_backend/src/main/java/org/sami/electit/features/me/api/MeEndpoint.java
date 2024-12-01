package org.sami.electit.features.me.api;

import org.sami.electit.shared.api.dtos.UserDTO;
import org.sami.electit.shared.domain.exceptions.NoEntryFoundException;
import org.sami.electit.shared.infrastructure.repositories.UserRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;

@Controller
@Secured("ROLE_ORGANIZER")
public class MeEndpoint {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private UserRepository userRepository;

    @QueryMapping
    public UserDTO me() {
        var authentication = SecurityContextHolder.getContext().getAuthentication();
        var name = authentication.getName();

        var currentUser = userRepository.findOneByName(name).block();
        if (currentUser == null) {
            throw new NoEntryFoundException("User not found");
        }

        logger.info("Returning user with name: {}", name);
        return currentUser.toDTO();
    }
}
