package com.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.VotersLoginBean;
import com.mvc.dao.VoterLoginDao;

@WebServlet("/VoterLogin")
public class VoterLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public VoterLogin() {
		super();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String studentid = request.getParameter("studentid");
		String Password = request.getParameter("Password");

		VotersLoginBean votersloginBean = new VotersLoginBean();

		votersloginBean.setStudentId(studentid);
		votersloginBean.setPassword(Password);

		VoterLoginDao voterloginDao = new VoterLoginDao();

		String userLoggedin = voterloginDao.voterloginUser(votersloginBean);

		if (userLoggedin.equals("SUCCESS")) // On success, you can display a message to user on Home page
		{

			request.setAttribute("Voting", true);
			request.getRequestDispatcher("/NomineesDetails.jsp").forward(request, response);
		} else // On Failure, display a meaningful message to the User.
		{
			request.setAttribute("Votrlgn", false);
			request.setAttribute("errMessage", userLoggedin);
			request.getRequestDispatcher("/VotersLogin.jsp").forward(request, response);
		}
	}

}
