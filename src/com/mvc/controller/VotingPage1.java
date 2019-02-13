package com.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.VotingPage1Bean;
import com.mvc.dao.VotingPageDao;

//annotation instead of using xml
@WebServlet("/VotingPage1")
public class VotingPage1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// constructor
	public VotingPage1() {
		super();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// getting parameters
		String nominees = request.getParameter("nominees");

		// creating object for votingpagebean
		VotingPage1Bean votingpageBean = new VotingPage1Bean();

		votingpageBean.setNominees(nominees);

		// creating object for nomineesregisterdao
		VotingPageDao nomineesregisterDao = new VotingPageDao();

		String userRegistered = nomineesregisterDao.nomineesregisterUser(votingpageBean);

		// On success, you can display a message to user on Votingthanks
		if (userRegistered.equals("SUCCESS")) {
			request.getRequestDispatcher("/Votingthanks.jsp").forward(request, response);
		}
		// On Failure, display a meaningful message to the User.
		else {
			request.setAttribute("errMessage", userRegistered);
			request.getRequestDispatcher("/VotingPage1.jsp").forward(request, response);
		}
	}

}