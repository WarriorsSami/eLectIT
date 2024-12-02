package org.sami.electit.shared.security;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.sami.electit.shared.domain.entities.Role;

public record TokenPayload(String username, Role role) {
    @Override
    public String toString() {
        return new ToStringBuilder(this)
                .append("username", username)
                .append("role", role)
                .toString();
    }
}
