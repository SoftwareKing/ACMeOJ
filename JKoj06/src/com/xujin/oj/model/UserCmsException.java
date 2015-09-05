package com.xujin.oj.model;

public class UserCmsException {
	
	private static final long serialVersionUID = 1L;
	private String message;

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public UserCmsException(String message) {
		super();
		this.message = message;
	}

	public UserCmsException() {
	}
	
}
