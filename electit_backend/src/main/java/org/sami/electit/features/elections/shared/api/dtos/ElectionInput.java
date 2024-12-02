package org.sami.electit.features.elections.shared.api.dtos;

import java.time.OffsetDateTime;

public record ElectionInput(
        String title,
        String description,
        OffsetDateTime startDateTime,
        Long duration
) {}
