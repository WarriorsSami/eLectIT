package org.sami.electit.features.users.register.application;

import org.sami.electit.features.users.shared.api.dtos.AuthResponse;
import org.sami.electit.features.users.shared.api.dtos.OrganizerInput;
import org.sami.electit.features.users.shared.api.dtos.UserInput;
import org.sami.electit.features.users.shared.api.dtos.VoterInput;
import org.sami.electit.features.users.shared.infrastructure.repositories.OrganizerRepository;
import org.sami.electit.features.users.shared.infrastructure.repositories.VoterRepository;
import org.sami.electit.shared.domain.entities.Organizer;
import org.sami.electit.shared.domain.entities.Voter;
import org.sami.electit.shared.domain.exceptions.DuplicateEntryException;
import org.sami.electit.shared.domain.exceptions.InvalidEntryDataException;
import org.sami.electit.shared.security.JWTTokenGenerator;
import org.sami.electit.shared.security.PasswordManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import reactor.core.publisher.Mono;

@Service
public class RegisterUseCase {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private VoterRepository voterRepository;
	@Autowired
	private OrganizerRepository organizerRepository;
	@Autowired
	private PasswordManager passwordManager;
	@Autowired
	private JWTTokenGenerator jwtGenerator;

	@Transactional
	public Mono<AuthResponse> execute(UserInput credentials) {
		return
				credentials.role()
						.map(role -> switch (role) {
							case ORGANIZER -> registerOrganizer(credentials.organizer());
							case VOTER -> registerVoter(credentials.voter());
						})
						.orElseThrow(() -> new InvalidEntryDataException("User can be either voter or organizer, not both or none"));
	}

	private Mono<AuthResponse> registerVoter(VoterInput voter) {
		logger.info("Registering new voter user with email: {}", voter.email());

		return voterRepository.findOneByEmail(voter.email())
				.flatMap(existingUser -> {
					logger.warn("User with email: {} already exists", voter.email());
					return Mono.<AuthResponse>error(new DuplicateEntryException("User with email: " + voter.email() + " already exists"));
				})
				.switchIfEmpty(voterRepository.findOneByName(voter.name())
						.flatMap(existingUser -> {
							logger.warn("User with name: {} already exists", voter.name());
							return Mono.<AuthResponse>error(new DuplicateEntryException("User with name: " + voter.name() + " already exists"));
						})
						.switchIfEmpty(voterRepository.findOneByNationalId(voter.nationalId())
								.flatMap(existingUser -> {
									logger.warn("User with national id: {} already exists", voter.nationalId());
									return Mono.<AuthResponse>error(new DuplicateEntryException("User with national id: " + voter.nationalId() + " already exists"));
								})
								.switchIfEmpty(Mono.defer(() -> {
											logger.info("Saving new user with email: {}", voter.email());

											var hashedPassword = passwordManager.hash(voter.password());
											var newUser = Voter.fromCredentials(voter, hashedPassword);

											return voterRepository.save(newUser)
													.flatMap(savedUser -> {
														var token = jwtGenerator.generate(savedUser.getName(), savedUser.role());
														var userDto = savedUser.toDTO();
														logger.info("User with email: {} registered successfully", voter.email());
														return Mono.just(new AuthResponse(token, userDto));
													});
										})
								)
						));
	}

	private Mono<AuthResponse> registerOrganizer(OrganizerInput organizer) {
		logger.info("Registering new organizer user with email: {}", organizer.email());

		return organizerRepository.findOneByEmail(organizer.email())
				.flatMap(existingUser -> {
					logger.warn("User with email: {} already exists", organizer.email());
					return Mono.<AuthResponse>error(new DuplicateEntryException("User with email: " + organizer.email() + " already exists"));
				})
				.switchIfEmpty(organizerRepository.findOneByName(organizer.name())
						.flatMap(existingUser -> {
							logger.warn("User with name: {} already exists", organizer.name());
							return Mono.<AuthResponse>error(new DuplicateEntryException("User with name: " + organizer.name() + " already exists"));
						})
						.switchIfEmpty(Mono.defer(() -> {
									logger.info("Saving new user with email: {}", organizer.email());

									var hashedPassword = passwordManager.hash(organizer.password());
									var newUser = Organizer.fromCredentials(organizer, hashedPassword);

									return organizerRepository.save(newUser)
											.flatMap(savedUser -> {
												var token = jwtGenerator.generate(savedUser.getName(), savedUser.role());
												var userDto = savedUser.toDTO();
												logger.info("User with email: {} registered successfully", organizer.email());
												return Mono.just(new AuthResponse(token, userDto));
											});
								})
						)
				);
	}
}