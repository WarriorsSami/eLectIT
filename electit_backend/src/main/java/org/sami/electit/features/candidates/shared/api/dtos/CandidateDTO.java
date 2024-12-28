package org.sami.electit.features.candidates.shared.api.dtos;

public record CandidateDTO(
		Long id,
		String name,
		String party,
		String manifesto,
		String pictureUrl
) {}
