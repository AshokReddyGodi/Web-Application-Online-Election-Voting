package com.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.VotingPage1Bean;
import com.mvc.dao.VotingPageDao;

@WebServlet("/VotingPage1")
public class VotingPage1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public VotingPage1() {
		super();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String nominees = request.getParameter("nominees");

		VotingPage1Bean votingpageBean = new VotingPage1Bean();

		votingpageBean.setNominees(nominees);

		VotingPageDao nomineesregisterDao = new VotingPageDao();

		String userRegistered = nomineesregisterDao.nomineesregisterUser(votingpageBean);
		if (userRegistered.equals("SUCCESS")) // On success, you can display a message to user on Home page
		{
			request.getRequestDispatcher("/Votingthanks.jsp").forward(request, response);
		} else // On Failure, display a meaningful message to the User.
		{
			request.setAttribute("errMessage", userRegistered);
			request.getRequestDispatcher("/VotingPage1.jsp").forward(request, response);
		}
	}

}