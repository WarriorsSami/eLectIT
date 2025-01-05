package org.sami.electit.shared.domain.validators;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Constraint(validatedBy = FutureTimestampValidator.class)
@Target({ ElementType.FIELD, ElementType.PARAMETER })
@Retention(RetentionPolicy.RUNTIME)
public @interface FutureTimestamp {
    String message() default "Start timestamp must be a future datetime";
    Class<?>[] groups() default {};
    Class<? extends Payload>[] payload() default {};
}