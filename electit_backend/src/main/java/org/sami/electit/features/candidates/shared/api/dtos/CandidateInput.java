package org.sami.electit.features.candidates.shared.api.dtos;

public record CandidateInput(
        String name,
        String party,
        String manifesto,
        String pictureUrl
) {}
