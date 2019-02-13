package com.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.VotersLoginBean;
import com.mvc.dao.VoterLoginDao;

//annotations instead of using xml
@WebServlet("/VoterLogin")
public class VoterLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// constructor
	public VoterLogin() {
		super();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// getting parameters
		String studentid = request.getParameter("studentid");
		String Password = request.getParameter("Password");

		// creating object for votersloginbean
		VotersLoginBean votersloginBean = new VotersLoginBean();

		// setting the values
		votersloginBean.setStudentId(studentid);
		votersloginBean.setPassword(Password);

		// creating object for voterlogindao
		VoterLoginDao voterloginDao = new VoterLoginDao();

		String userLoggedin = voterloginDao.voterloginUser(votersloginBean);

		// On success, you can display a message to user on Nominees Details
		if (userLoggedin.equals("SUCCESS")) {

			request.setAttribute("Voting", true);
			request.getRequestDispatcher("/NomineesDetails.jsp").forward(request, response);
		}
		// On Failure, display a meaningful message to the User.
		else {
			request.setAttribute("Votrlgn", false);
			request.setAttribute("errMessage", userLoggedin);
			request.getRequestDispatcher("/VotersLogin.jsp").forward(request, response);
		}
	}

}
