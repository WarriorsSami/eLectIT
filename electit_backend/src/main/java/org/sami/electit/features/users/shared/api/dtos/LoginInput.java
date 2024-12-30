package org.sami.electit.features.users.shared.api.dtos;

public record LoginInput(
		String email,
		String password
) {}
