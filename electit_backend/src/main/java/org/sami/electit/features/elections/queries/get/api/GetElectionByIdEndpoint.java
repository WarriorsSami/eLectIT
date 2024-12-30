package org.sami.electit.features.elections.queries.get.api;

import org.sami.electit.features.elections.queries.get.application.GetElectionByIdUseCase;
import org.sami.electit.features.elections.shared.api.dtos.ElectionDTO;
import org.sami.electit.shared.domain.entities.Role;
import org.sami.electit.shared.security.RoleSecured;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;

import reactor.core.publisher.Mono;

@Controller
@RoleSecured({ Role.ORGANIZER, Role.VOTER })
public class GetElectionByIdEndpoint {

    @Autowired
    private GetElectionByIdUseCase getElectionByIdUseCase;

    @QueryMapping
    public Mono<ElectionDTO> electionById(@Argument Long id) {
        var claims = SecurityContextHolder.getContext().getAuthentication();
        return getElectionByIdUseCase.execute(claims, id);
    }
}
