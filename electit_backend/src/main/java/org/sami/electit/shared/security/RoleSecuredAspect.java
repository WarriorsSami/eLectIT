package org.sami.electit.shared.security;

import java.util.Arrays;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.sami.electit.shared.domain.entities.Role;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class RoleSecuredAspect {

    @Before("@within(org.sami.electit.shared.security.RoleSecured) || @annotation(org.sami.electit.shared.security.RoleSecured)")
    public void checkRole(JoinPoint joinPoint) {
        var roleSecured = joinPoint.getTarget().getClass().getAnnotation(RoleSecured.class);

        if (roleSecured == null) {
            return;
        }

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication == null || !authentication.isAuthenticated()) {
            throw new AccessDeniedException("User is not authenticated");
        }

        if (roleSecured.value().length == 0) {
            return;
        }

        boolean hasRole = authentication.getAuthorities().stream()
                .anyMatch(grantedAuthority -> {
                    for (Role role : roleSecured.value()) {
                        if (grantedAuthority.getAuthority().equals(role.getAuthority())) {
                            return true;
                        }
                    }
                    return false;
                });

        if (!hasRole) {
            throw new AccessDeniedException("User does not have any of the required roles: " + Arrays.toString(roleSecured.value()));
        }
    }
}