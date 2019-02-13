package com.mvc.bean;

public class NomineesRegisterBean {

	// declaring variables are private
	private String nomineeid;
	private String nomineename;
	private String gender;
	private String age;
	private String username;
	private String password;
	private String description;

	// getting the values
	public String getNomineeId() {
		// return values
		return nomineeid;
	}

	// seting values
	public void setNomineeId(String nomineeid) {
		this.nomineeid = nomineeid;
	}

	// getting the values
	public String getNomineeName() {
		return nomineename;
	}

	// seting values
	public void setNomineeName(String nomineename) {
		this.nomineename = nomineename;
	}

	// getting the values
	public String getGender() {
		return gender;
	}

	// seting values
	public void setGender(String gender) {
		this.gender = gender;
	}

	// getting the values
	public String getAge() {
		return age;
	}

	// seting values
	public void setAge(String age) {
		this.age = age;
	}

	// getting the values
	public String getUsername() {
		return username;
	}

	// seting values
	public void setUsername(String username) {
		this.username = username;
	}

	// getting the values
	public String getPassword() {
		return password;
	}

	// seting values
	public void setPassword(String password) {
		this.password = password;
	}

	// getting the values
	public String getDescription() {
		return description;
	}

	// seting values
	public void setDescription(String description) {
		this.description = description;
	}

}