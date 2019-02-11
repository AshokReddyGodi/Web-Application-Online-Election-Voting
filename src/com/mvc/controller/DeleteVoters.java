package com.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.DeleteVotersBean;
import com.mvc.dao.DeleteVotersDao;



/**
 * Servlet implementation class Delete_Author_Servlet
 */
@WebServlet("/DeleteVoters")
public class DeleteVoters extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		String studentname=request.getParameter("studentname");
		System.out.println("in servlet"+studentname);
		DeleteVotersBean voterBean = new DeleteVotersBean();

		System.out.println(" before"+studentname);
		voterBean.setStudentName(studentname);
		System.out.println("after");
		DeleteVotersDao userdao = new DeleteVotersDao();
		System.out.println("123");
		String userRegistered = userdao.studentname(voterBean);
		System.out.println(userRegistered);
		if (userRegistered.equals("SUCCESS")) // On success, you can display a message to user on Home page
		{
			System.out.println("in if");
			//request.setAttribute("Admin_Menu", true);

			request.getRequestDispatcher("/AdminPage.jsp").forward(request, response);
		} else // On Failure, display a meaningful message to the User.
		{
			System.out.println("in else");
			
			request.setAttribute("errMessage", userRegistered);
			request.getRequestDispatcher("/DeleteVoters.jsp").forward(request, response);
		}
	}
	}


