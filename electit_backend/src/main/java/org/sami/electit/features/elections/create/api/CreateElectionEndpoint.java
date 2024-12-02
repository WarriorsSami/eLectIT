package org.sami.electit.features.elections.create.api;

import org.sami.electit.features.elections.create.application.CreateElectionUseCase;
import org.sami.electit.features.elections.shared.api.dtos.ElectionDTO;
import org.sami.electit.features.elections.shared.api.dtos.ElectionInput;
import org.sami.electit.shared.domain.entities.Role;
import org.sami.electit.shared.security.RoleSecured;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.MutationMapping;
import org.springframework.stereotype.Controller;
import reactor.core.publisher.Mono;

@Controller
@RoleSecured({ Role.ORGANIZER })
public class CreateElectionEndpoint {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private CreateElectionUseCase createElectionUseCase;

    @MutationMapping
    public Mono<ElectionDTO> createElection(@Argument ElectionInput election) {
        return createElectionUseCase.execute(election);
    }
}
