package org.sami.electit.features.elections.shared.api.dtos;

public record ElectionDTO(
        Long id,
        String title,
        String description,
        Long startTimestamp,
        Long duration
) {}
