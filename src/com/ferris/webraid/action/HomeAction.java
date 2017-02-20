package com.ferris.webraid.action;

import com.opensymphony.xwork2.ActionSupport;

public class HomeAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = -7132659822673634055L;

	private String username;
	private String password;
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
	
	public String home() throws Exception {
		System.out.println(username+"\t"+password);
		return SUCCESS;
	}
}
