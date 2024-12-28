package org.sami.electit.features.candidates.add.api;

import org.sami.electit.features.candidates.add.application.AddCandidateUseCase;
import org.sami.electit.features.candidates.shared.api.dtos.CandidateInput;
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
public class AddCandidateEndpoint {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private AddCandidateUseCase addCandidateUseCase;

	@MutationMapping
	public Mono<ElectionDTO> addCandidate(@Argument Long electionId, @Argument CandidateInput candidate) {
		var claims = SecurityContextHolder.getContext().getAuthentication();
		return addCandidateUseCase.execute(claims, electionId, candidate);
	}
}
