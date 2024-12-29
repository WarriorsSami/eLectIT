package org.sami.electit.features.users.shared.api.dtos;

public record VoterInput(
		String name,
		String email,
		String password,
		String nationalId
) {}
