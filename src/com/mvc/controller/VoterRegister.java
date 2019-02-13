package com.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.VotersRegisterBean;
import com.mvc.dao.VoterRegisterDao;

//annotations instead of using xml
@WebServlet("/VoterRegister")
public class VoterRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// constructor
	public VoterRegister() {
		super();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// getting parameters
		String studentid = request.getParameter("studentid");
		String studentname = request.getParameter("studentname");
		String gender = request.getParameter("gender");
		String department = request.getParameter("department");
		String year = request.getParameter("year");
		String Password = request.getParameter("Password");
		String repeatpassword = request.getParameter("repeatpassword");

		// creating object for votersregisterbean
		VotersRegisterBean votersregisterBean = new VotersRegisterBean();

		// setting the values
		votersregisterBean.setStudentId(studentid);
		votersregisterBean.setStudentName(studentname);
		votersregisterBean.setGender(gender);
		votersregisterBean.setDepartment(department);
		votersregisterBean.setYear(year);
		votersregisterBean.setPassword(Password);
		votersregisterBean.setRepeatPassword(repeatpassword);

		// creating the object for voterregisterdao
		VoterRegisterDao voterregisterDao = new VoterRegisterDao();

		String userRegistered = voterregisterDao.voterregisterUser(votersregisterBean);

		// On success, you can display a message to user on Voterslogin
		if (userRegistered.equals("SUCCESS")) {

			request.setAttribute("vtrlogin", true);
			request.getRequestDispatcher("/VotersLogin.jsp").forward(request, response);
		}
		// On Failure, display a meaningful message to the User.
		else {
			request.setAttribute("vtrrgstr", false);
			request.setAttribute("errMessage", userRegistered);
			request.getRequestDispatcher("/VotersRegister.jsp").forward(request, response);
		}
	}

}
