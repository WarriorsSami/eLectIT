package org.sami.electit.shared.domain.entities;

import org.sami.electit.features.candidates.shared.api.dtos.CandidateDTO;
import org.sami.electit.features.candidates.shared.api.dtos.CandidateInput;
import org.springframework.data.neo4j.core.schema.*;

@Node
public record Candidate(
		@Id @GeneratedValue Long id,
		String name,
		String party,
		String manifesto,
		String pictureUrl
) {
	public static Candidate fromDTO(CandidateInput candidateInput) {
		return new Candidate(null, candidateInput.name(), candidateInput.party(), candidateInput.manifesto(), candidateInput.pictureUrl());
	}

	public CandidateDTO toDTO(Integer votesCount) {
		return new CandidateDTO(id(), name(), party(), manifesto(), pictureUrl(), votesCount);
	}
}