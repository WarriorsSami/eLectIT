package org.sami.electit.features.elections.scan.application;

import org.sami.electit.features.elections.shared.api.dtos.ElectionDTO;
import org.sami.electit.features.elections.shared.infrastructure.repositories.ElectionRepository;
import org.sami.electit.shared.domain.entities.Election;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import reactor.core.publisher.Flux;

@Service
public class ScanElectionsUseCase {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private ElectionRepository electionRepository;

	@Transactional
	public Flux<ElectionDTO> execute() {
		logger.info("Scanning elections");

		return electionRepository.findAll()
				.map(Election::toDTO);
	}
}
