package org.sami.electit.features.candidates.mutations.add.api;

import org.sami.electit.features.candidates.mutations.add.application.AddCandidateUseCase;
import org.sami.electit.features.candidates.shared.api.dtos.CandidateInput;
import org.sami.electit.features.elections.shared.api.dtos.ElectionDTO;
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
import jakarta.validation.Validator;

@Controller
@RoleSecured({ Role.ORGANIZER })
public class AddCandidateEndpoint {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private AddCandidateUseCase addCandidateUseCase;
	@Autowired
	private Validator validator;

	@MutationMapping
	public Mono<ElectionDTO> addCandidate(@Argument Long electionId, @Argument CandidateInput candidate) {
		var violations = validator.validate(candidate);
		if (!violations.isEmpty()) {
			logger.warn("Invalid candidate input: {}", violations.iterator().next().getMessage());
			return Mono.error(new InvalidEntryDataException("Invalid candidate input: " + violations.iterator().next().getMessage()));
		}

		var claims = SecurityContextHolder.getContext().getAuthentication();
		return addCandidateUseCase.execute(claims, electionId, candidate);
	}
}
