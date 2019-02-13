package com.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.DeleteVotersBean;
import com.mvc.dao.DeleteVotersDao;

//annotations instead of using xml
@WebServlet("/DeleteVoters")
public class DeleteVoters extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		// getting parameters
		String studentname = request.getParameter("studentname");

		// creating object Deletevoterbean
		DeleteVotersBean voterBean = new DeleteVotersBean();

		voterBean.setStudentName(studentname);

		// creating object for DeleteVoterDao
		DeleteVotersDao userdao = new DeleteVotersDao();

		String userRegistered = userdao.studentname(voterBean);

		// On success, you can display a message to user on Admin Page
		if (userRegistered.equals("SUCCESS")) {

			request.getRequestDispatcher("/AdminPage.jsp").forward(request, response);
		}
		// On Failure, display a meaningful message to the User.
		else {
			request.setAttribute("errMessage", userRegistered);
			request.getRequestDispatcher("/DeleteVoters.jsp").forward(request, response);
		}
	}
}
