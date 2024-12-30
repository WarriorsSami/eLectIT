package org.sami.electit.features.elections.queries.scan.api;

import org.sami.electit.features.elections.queries.scan.application.ScanElectionsUseCase;
import org.sami.electit.features.elections.shared.api.dtos.ElectionDTO;
import org.sami.electit.shared.domain.entities.Role;
import org.sami.electit.shared.security.RoleSecured;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import reactor.core.publisher.Flux;

@Controller
@RoleSecured({ Role.ORGANIZER, Role.VOTER })
public class ScanElectionsEndpoint {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private ScanElectionsUseCase scanElectionsUseCase;

	@QueryMapping
	public Flux<ElectionDTO> elections() {
		var claims = SecurityContextHolder.getContext().getAuthentication();
		return scanElectionsUseCase.execute(claims);
	}
}
