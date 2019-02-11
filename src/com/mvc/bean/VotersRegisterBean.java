package com.mvc.bean;

public class VotersRegisterBean {

	private String studentid;
	private String studentname;
	private String gender;
	private String department;
	private String year;
	private String Password;
	private String repeatpassword;

	public String getStudentId() {
		return studentid;
	}

	public void setStudentId(String studentid) {
		this.studentid = studentid;
	}

	public String getStudentName() {
		return studentname;
	}

	public void setStudentName(String studentname) {
		this.studentname = studentname;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		this.Password = password;
	}

	public String getRepeatPassword() {
		return repeatpassword;
	}

	public void setRepeatPassword(String repeatpassword) {
		this.repeatpassword = repeatpassword;
	}

}
