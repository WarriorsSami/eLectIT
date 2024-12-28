package org.sami.electit.features.elections.get.api;

import org.sami.electit.features.elections.get.application.GetElectionByIdUseCase;
import org.sami.electit.features.elections.shared.api.dtos.ElectionDTO;
import org.sami.electit.shared.domain.entities.Role;
import org.sami.electit.shared.security.RoleSecured;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.stereotype.Controller;

import reactor.core.publisher.Mono;

@Controller
@RoleSecured({ Role.ORGANIZER })
public class GetElectionByIdEndpoint {

    @Autowired
    private GetElectionByIdUseCase getElectionByIdUseCase;

    @QueryMapping
    public Mono<ElectionDTO> electionById(@Argument Long id) {
        return getElectionByIdUseCase.execute(id);
    }
}
