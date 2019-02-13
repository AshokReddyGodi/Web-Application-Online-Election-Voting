package com.mvc.bean;

public class VotersLoginBean {

	// declaring variables are private
	private String studentid;
	private String Password;

	// getting values
	public String getStudentId() {
		// return values
		return studentid;
	}

	// setting values
	public void setStudentId(String studentid) {
		this.studentid = studentid;
	}

	// getting values
	public String getPassword() {
		return Password;
	}

	// setting values
	public void setPassword(String password) {
		this.Password = password;
	}

}
