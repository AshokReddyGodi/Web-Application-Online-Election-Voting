package com.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.NomineesRegisterBean;
import com.mvc.dao.NomineesRegisterDao;

@WebServlet("/NomineesRegister")
public class NomineesRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public NomineesRegister() {
		super();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String nomineeid = request.getParameter("nomineeid");
		String nomineename = request.getParameter("nomineename");
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String description = request.getParameter("description");

		NomineesRegisterBean nomineesregisterBean = new NomineesRegisterBean();

		nomineesregisterBean.setNomineeId(nomineeid);
		nomineesregisterBean.setNomineeName(nomineename);
		nomineesregisterBean.setGender(gender);
		nomineesregisterBean.setAge(age);
		nomineesregisterBean.setUsername(username);
		nomineesregisterBean.setPassword(password);
		nomineesregisterBean.setDescription(description);

		NomineesRegisterDao nomineesregisterDao = new NomineesRegisterDao();

		String userRegistered = nomineesregisterDao.nomineesregisterUser(nomineesregisterBean);
		if (userRegistered.equals("SUCCESS")) // On success, you can display a message to user on Home page
		{

			request.setAttribute("adminpg", true);

			request.getRequestDispatcher("/AdminPage.jsp").forward(request, response);
		} else // On Failure, display a meaningful message to the User.
		{
			request.setAttribute("nomineeesrgstr", false);
			request.setAttribute("errMessage", userRegistered);
			request.getRequestDispatcher("/NomineesRegister.jsp").forward(request, response);
		}

	}

}