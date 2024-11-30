package org.sami.electit.shared.domain.exceptions;

public class NoEntryFoundException extends RuntimeException {
    public NoEntryFoundException(String message) {
        super(message);
    }
}
