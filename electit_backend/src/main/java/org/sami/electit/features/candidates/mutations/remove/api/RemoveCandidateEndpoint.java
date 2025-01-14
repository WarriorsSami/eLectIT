package org.sami.electit.features.candidates.mutations.remove.api;

import org.sami.electit.features.candidates.mutations.remove.application.RemoveCandidateUseCase;
import org.sami.electit.features.elections.shared.api.dtos.ElectionDTO;
import org.sami.electit.shared.domain.entities.Role;
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
public class RemoveCandidateEndpoint {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private RemoveCandidateUseCase removeCandidateUseCase;

	@MutationMapping
	public Mono<ElectionDTO> removeCandidate(@Argument Long electionId, @Argument Long candidateId) {
		var claims = SecurityContextHolder.getContext().getAuthentication();
		return removeCandidateUseCase.execute(claims, electionId, candidateId);
	}
}
