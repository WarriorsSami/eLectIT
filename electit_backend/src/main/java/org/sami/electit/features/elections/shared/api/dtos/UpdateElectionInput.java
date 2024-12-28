package org.sami.electit.features.elections.shared.api.dtos;

public record UpdateElectionInput(
        String title,
        String description,
        Long startTimestamp,
        Long duration
) {}
