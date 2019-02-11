package com.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.VotersRegisterBean;
import com.mvc.dao.VoterRegisterDao;

@WebServlet("/VoterRegister")
public class VoterRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public VoterRegister() {
		super();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String studentid = request.getParameter("studentid");
		String studentname = request.getParameter("studentname");
		String gender = request.getParameter("gender");
		String department = request.getParameter("department");
		String year = request.getParameter("year");
		String Password = request.getParameter("Password");
		String repeatpassword = request.getParameter("repeatpassword");

		VotersRegisterBean votersregisterBean = new VotersRegisterBean();

		votersregisterBean.setStudentId(studentid);
		votersregisterBean.setStudentName(studentname);
		votersregisterBean.setGender(gender);
		votersregisterBean.setDepartment(department);
		votersregisterBean.setYear(year);
		votersregisterBean.setPassword(Password);
		votersregisterBean.setRepeatPassword(repeatpassword);

		VoterRegisterDao voterregisterDao = new VoterRegisterDao();

		String userRegistered = voterregisterDao.voterregisterUser(votersregisterBean);

		if (userRegistered.equals("SUCCESS")) // On success, you can display a message to user on Home page
		{

			request.setAttribute("vtrlogin", true);
			request.getRequestDispatcher("/VotersLogin.jsp").forward(request, response);
		} else // On Failure, display a meaningful message to the User.
		{
			request.setAttribute("vtrrgstr", false);
			request.setAttribute("errMessage", userRegistered);
			request.getRequestDispatcher("/VotersRegister.jsp").forward(request, response);
		}
	}

}
