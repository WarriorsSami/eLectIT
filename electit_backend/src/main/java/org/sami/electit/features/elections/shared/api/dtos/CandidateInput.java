package org.sami.electit.features.elections.shared.api.dtos;

public record CandidateInput(
        String name,
        String party,
        String manifesto,
        String pictureUrl
) {}
