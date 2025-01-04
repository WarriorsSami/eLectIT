package org.sami.electit.features.elections.queries.scan.application;

import org.sami.electit.features.elections.shared.api.dtos.ElectionDTO;
import org.sami.electit.features.elections.shared.application.GetStatisticsForElectionUseCase;
import org.sami.electit.features.elections.shared.infrastructure.repositories.ElectionRepository;
import org.sami.electit.features.users.shared.infrastructure.repositories.UserRepository;
import org.sami.electit.shared.domain.exceptions.NoEntryFoundException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

@Service
public class ScanElectionsUseCase {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private GetStatisticsForElectionUseCase getStatisticsForElectionUseCase;
	@Autowired
	private ElectionRepository electionRepository;
	@Autowired
	private UserRepository userRepository;

	@Transactional
	public Flux<ElectionDTO> execute(Authentication claims) {
		logger.info("Scanning elections");

		var username = claims.getName();
		return userRepository.findOneByName(username)
				.switchIfEmpty(Mono.error(new NoEntryFoundException("User not found")))
				.flatMapMany(user -> electionRepository.findAll()
						.flatMap(e -> getStatisticsForElectionUseCase.execute(user, e)));
	}
}
