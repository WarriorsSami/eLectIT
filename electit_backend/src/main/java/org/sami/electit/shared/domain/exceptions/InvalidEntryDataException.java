package org.sami.electit.shared.domain.exceptions;

public class InvalidEntryDataException extends RuntimeException {
    public InvalidEntryDataException(String message) {
        super(message);
    }
}
