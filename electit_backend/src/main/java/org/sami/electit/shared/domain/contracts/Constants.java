package org.sami.electit.shared.domain.contracts;

public abstract class Constants {
	public static final String PASSWORD_REGEX = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\\S+$).{8,}$";
	public static final String NATIONAL_ID_REGEX = "^[0-9]{13}$";
}
