package com.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.NomineesRegisterBean;
import com.mvc.dao.NomineesRegisterDao;

//annotations instead of using xml
@WebServlet("/NomineesRegister")
public class NomineesRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// constructor
	public NomineesRegister() {
		super();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// getting parameters
		String nomineeid = request.getParameter("nomineeid");
		String nomineename = request.getParameter("nomineename");
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String description = request.getParameter("description");

		// creating object for nomineesregisterbean
		NomineesRegisterBean nomineesregisterBean = new NomineesRegisterBean();

		// setting the values
		nomineesregisterBean.setNomineeId(nomineeid);
		nomineesregisterBean.setNomineeName(nomineename);
		nomineesregisterBean.setGender(gender);
		nomineesregisterBean.setAge(age);
		nomineesregisterBean.setUsername(username);
		nomineesregisterBean.setPassword(password);
		nomineesregisterBean.setDescription(description);

		// creating object for nomineesregisteredao
		NomineesRegisterDao nomineesregisterDao = new NomineesRegisterDao();

		String userRegistered = nomineesregisterDao.nomineesregisterUser(nomineesregisterBean);

		// On success, you can display a message to user on Admin Page
		if (userRegistered.equals("SUCCESS")) {

			request.setAttribute("adminpg", true);

			request.getRequestDispatcher("/AdminPage.jsp").forward(request, response);
		}
		// On Failure, display a meaningful message to the User.
		else {
			request.setAttribute("nomineeesrgstr", false);
			request.setAttribute("errMessage", userRegistered);
			request.getRequestDispatcher("/NomineesRegister.jsp").forward(request, response);
		}

	}

}