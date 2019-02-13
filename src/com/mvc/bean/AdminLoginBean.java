package com.mvc.bean;

//creating beanclass
public class AdminLoginBean {

	// declaring variables are private
	private String username;
	private String password;

	// getting values
	public String getUserName() {
		// return values
		return username;
	}

	// setting the values
	public void setUserName(String username) {
		this.username = username;
	}

	public String getPassword() {
		// return values
		return password;
	}

	// setting the values
	public void setPassword(String password) {
		this.password = password;
	}
}