package org.sami.electit.features.elections.mutations.create.api;

import jakarta.validation.Validator;
import org.sami.electit.features.elections.mutations.create.application.CreateElectionUseCase;
import org.sami.electit.features.elections.shared.api.dtos.ElectionDTO;
import org.sami.electit.features.elections.shared.api.dtos.ElectionInput;
import org.sami.electit.shared.domain.entities.Role;
import org.sami.electit.shared.domain.exceptions.InvalidEntryDataException;
import org.sami.electit.shared.security.RoleSecured;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.MutationMapping;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import reactor.core.publisher.Mono;

@Controller
@RoleSecured({ Role.ORGANIZER })
public class CreateElectionEndpoint {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private CreateElectionUseCase createElectionUseCase;
    @Autowired
    private Validator validator;

    @MutationMapping
    public Mono<ElectionDTO> createElection(@Argument ElectionInput election) {
        var electionViolations = validator.validate(election);
        if (!electionViolations.isEmpty()) {
            logger.warn("Invalid election input: {}", electionViolations.iterator().next().getMessage());
            return Mono.error(new InvalidEntryDataException("Invalid election input: " + electionViolations.iterator().next().getMessage()));
        }

        for (var candidate: election.candidates()) {
            var candidateViolations = validator.validate(candidate);
            if (!candidateViolations.isEmpty()) {
                logger.warn("Invalid candidate input: {}", candidateViolations.iterator().next().getMessage());
                return Mono.error(new InvalidEntryDataException("Invalid candidate input: " + candidateViolations.iterator().next().getMessage()));
            }
        }

        var claims = SecurityContextHolder.getContext().getAuthentication();
        return createElectionUseCase.execute(claims, election);
    }
}
