package org.sami.electit.features.elections.update.api;

import org.sami.electit.features.elections.shared.api.dtos.ElectionDTO;
import org.sami.electit.features.elections.shared.api.dtos.UpdateElectionInput;
import org.sami.electit.features.elections.update.application.UpdateElectionUseCase;
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
public class UpdateElectionEndpoint {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private UpdateElectionUseCase updateElectionUseCase;

	@MutationMapping
	public Mono<ElectionDTO> updateElection(@Argument Long electionId, @Argument UpdateElectionInput election) {
		var claims = SecurityContextHolder.getContext().getAuthentication();
		return updateElectionUseCase.execute(claims, electionId, election);
	}
}
