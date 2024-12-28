package org.sami.electit.shared.domain.exceptions;

public class ForbiddenActionException extends RuntimeException {
	public ForbiddenActionException(String message) {
		super(message);
	}
}
