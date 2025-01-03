package org.sami.electit.shared.middlewares;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.sami.electit.shared.domain.contracts.TokenUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.www.BasicAuthenticationFilter;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.util.Collections;

@Component
public class JWTAuthorizationFilter extends BasicAuthenticationFilter {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    private final TokenUtils tokenUtils;

    public JWTAuthorizationFilter(AuthenticationManager authManager, TokenUtils tokenUtils) {
        super(authManager);
        this.tokenUtils = tokenUtils;
    }

    @Override
    protected void doFilterInternal(HttpServletRequest req, HttpServletResponse res, FilterChain chain) throws IOException, ServletException {
        try {
            var header = req.getHeader(tokenUtils.getHeaderString());

            if (header == null || !header.startsWith(tokenUtils.getTokenPrefix())) {
                chain.doFilter(req, res);
                return;
            }

            var authentication = getAuthentication(req);
            SecurityContextHolder.getContext().setAuthentication(authentication);

            chain.doFilter(req, res);
        } catch (Exception e) {
            logger.error("Error while processing JWT token", e);
            res.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
            res.getWriter().write("Invalid or expired access token");
        }
    }

    private UsernamePasswordAuthenticationToken getAuthentication(HttpServletRequest request) {
        var token = request.getHeader(tokenUtils.getHeaderString());

        if (token != null) {
            var tokenPayload = tokenUtils.decodeToken(token);

            if (tokenPayload.username() != null && tokenPayload.role() != null) {
                logger.info("User {} authenticated with role {}", tokenPayload.username(), tokenPayload.role());
                return new UsernamePasswordAuthenticationToken(tokenPayload.username(), null, Collections.singletonList(tokenPayload.role()));
            }

            logger.error("Valid token contains no user info");
        }
        return null;
    }
}