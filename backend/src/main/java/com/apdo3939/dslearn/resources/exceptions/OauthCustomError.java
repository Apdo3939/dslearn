package com.apdo3939.dslearn.resources.exceptions;

import com.fasterxml.jackson.annotation.JsonProperty;

public class OauthCustomError {

	private String error;

	@JsonProperty("error_description")
	private String errorDescription;

	public OauthCustomError() {

	}

	public OauthCustomError(String error, String errorDescription) {
		super();
		this.error = error;
		this.errorDescription = errorDescription;
	}

	public String getError() {
		return error;
	}

	public void setError(String error) {
		this.error = error;
	}

	public String getErrorDescription() {
		return errorDescription;
	}

	public void setErrorDescription(String errorDescription) {
		this.errorDescription = errorDescription;
	}

}
