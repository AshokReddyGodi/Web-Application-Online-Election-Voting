package com.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.AdminLoginBean;
import com.mvc.dao.AdminLoginDao;

@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminLogin() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("username");
		String password = request.getParameter("password");

		AdminLoginBean adminloginBean = new AdminLoginBean(); // creating object for LoginBean class, which is a normal
																// java class, contains just setters and getters. Bean
																// classes are efficiently used in java to access user
																// information wherever required in the application.
		adminloginBean.setUserName(username); // setting the username and password through the loginBean object then
												// only you can get it in future.
		adminloginBean.setPassword(password);

		AdminLoginDao adminloginDao = new AdminLoginDao(); // creating object for LoginDao. This class contains main
															// logic of the application.
		String userValidate = adminloginDao.authenticateUser(adminloginBean); // Calling authenticateUser function
		if (userValidate.equals("SUCCESS")) // If function returns success string then user will be rooted to Home page
		{
			request.setAttribute("adminpage", true);
			request.setAttribute("userName", username); // with setAttribute() you can define a "key" and value pair so
														// that you can get it in future using getAttribute("key")
			request.getRequestDispatcher("/AdminPage.jsp").forward(request, response);// RequestDispatcher is used to
																						// send the control to the
																						// invoked page.
		} else {
			request.setAttribute("admnpage", false);
			request.setAttribute("errMessage", userValidate); // If authenticateUser() function returnsother than
																// SUCCESS string it will be sent to Login page again.
																// Here the error message returned from function has
																// been stored in a errMessage key.
			request.getRequestDispatcher("/AdminLogin.jsp").forward(request, response);// forwarding the request
		}
	}

}
