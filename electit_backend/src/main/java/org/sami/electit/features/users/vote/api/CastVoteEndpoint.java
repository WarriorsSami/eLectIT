package org.sami.electit.features.users.vote.api;

import org.sami.electit.features.users.shared.api.dtos.VoteDTO;
import org.sami.electit.features.users.vote.application.CastVoteUseCase;
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
@RoleSecured({ Role.VOTER })
public class CastVoteEndpoint {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private CastVoteUseCase castVoteUseCase;

	@MutationMapping
	public Mono<VoteDTO> vote(@Argument Long electionId, @Argument Long candidateId) {
		var claims = SecurityContextHolder.getContext().getAuthentication();
		return castVoteUseCase.execute(claims, electionId, candidateId);
	}
}
