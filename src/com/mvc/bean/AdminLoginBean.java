package com.mvc.bean;

//As I have already told it contains only setters and getters
public class AdminLoginBean {
	private String username;
	private String password;

	public String getUserName() {
		return username;
	}

	public void setUserName(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}