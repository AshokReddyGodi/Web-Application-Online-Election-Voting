package com.mvc.bean;

public class VotersRegisterBean {

	// declaring variables are private
	private String studentid;
	private String studentname;
	private String gender;
	private String department;
	private String year;
	private String Password;
	private String repeatpassword;

	// getting values
	public String getStudentId() {
		return studentid;
	}

	// setting values
	public void setStudentId(String studentid) {
		this.studentid = studentid;
	}

	// getting values
	public String getStudentName() {
		return studentname;
	}

	// setting values
	public void setStudentName(String studentname) {
		this.studentname = studentname;
	}

	// getting values
	public String getGender() {
		return gender;
	}

	// setting values
	public void setGender(String gender) {
		this.gender = gender;
	}

	// getting values
	public String getDepartment() {
		return department;
	}

	// setting values
	public void setDepartment(String department) {
		this.department = department;
	}

	// getting values
	public String getYear() {
		return year;
	}

	// setting values
	public void setYear(String year) {
		this.year = year;
	}

	// getting values
	public String getPassword() {
		return Password;
	}

	// setting values
	public void setPassword(String password) {
		this.Password = password;
	}

	// getting values
	public String getRepeatPassword() {
		return repeatpassword;
	}

	// setting values
	public void setRepeatPassword(String repeatpassword) {
		this.repeatpassword = repeatpassword;
	}

}
