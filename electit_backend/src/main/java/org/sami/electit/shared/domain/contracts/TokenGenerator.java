package org.sami.electit.shared.domain.contracts;

public interface TokenGenerator {
    String generate(Object id, Object role);
}
