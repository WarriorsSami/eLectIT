package org.sami.electit.shared.domain.entities;

import org.springframework.security.core.GrantedAuthority;

public enum Role implements GrantedAuthority {
    VOTER,
    ORGANIZER;

    @Override
    public String getAuthority() {
        return "ROLE_" + this.name();
    }
}
