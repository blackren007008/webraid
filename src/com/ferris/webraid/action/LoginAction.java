package com.ferris.webraid.action;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = -5138462757764664259L;
	
	private String username;
	private String password;

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("login success");
		return SUCCESS;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
