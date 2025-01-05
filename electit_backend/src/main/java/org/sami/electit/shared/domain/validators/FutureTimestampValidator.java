package org.sami.electit.shared.domain.validators;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

public class FutureTimestampValidator implements ConstraintValidator<FutureTimestamp, Long> {

    @Override
    public boolean isValid(Long value, ConstraintValidatorContext context) {
        if (value == null) {
            return true; // Consider null values as valid. Use @NotNull for null checks.
        }
        long currentTimestamp = System.currentTimeMillis() / 1000;
        return value > currentTimestamp;
    }
}