package org.sami.electit.features.users.me.api;

import org.sami.electit.features.users.me.application.GetCurrentUserUseCase;
import org.sami.electit.features.users.shared.api.dtos.UserDTO;
import org.sami.electit.shared.security.RoleSecured;
import org.sami.electit.shared.domain.entities.Role;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import reactor.core.publisher.Mono;

@Controller
@RoleSecured({ Role.VOTER, Role.ORGANIZER })
public class GetCurrentUserEndpoint {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private GetCurrentUserUseCase getCurrentUserUseCase;

    @QueryMapping
    public Mono<UserDTO> me() {
        var claims = SecurityContextHolder.getContext().getAuthentication();
        return getCurrentUserUseCase.execute(claims);
    }
}
