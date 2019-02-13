package com.mvc.bean;

public class DeleteNomineesBean {
	// variables are private
	private String nomineename;

	// getting the values
	public String getNomineeName() {
		// return the values
		return nomineename;
	}

	// setting the values
	public void setNomineeName(String nomineename) {
		System.out.println(nomineename);
		this.nomineename = nomineename;
	}

}
