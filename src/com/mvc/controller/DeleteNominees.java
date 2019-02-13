package com.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.DeleteNomineesBean;
import com.mvc.dao.DeleteNomineesDao;

//annotation instead of using xml
@WebServlet("/DeleteNominees")
public class DeleteNominees extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		// getting the parameters
		String nomineename = request.getParameter("nomineename");

		// creating object for deletenomineebean
		DeleteNomineesBean nomineeBean = new DeleteNomineesBean();

		nomineeBean.setNomineeName(nomineename);
		// creating object for DeleteNomoineesdao
		DeleteNomineesDao userdao = new DeleteNomineesDao();

		String userRegistered = userdao.nomineename(nomineeBean);

		// On success, you can display a message to user on Admin Page
		if (userRegistered.equals("SUCCESS")) {

			request.getRequestDispatcher("/AdminPage.jsp").forward(request, response);
		}
		// On Failure, display a meaningful message to the User.
		else {

			request.setAttribute("errMessage", userRegistered);
			request.getRequestDispatcher("/DeleteNominees.jsp").forward(request, response);
		}
	}
}
