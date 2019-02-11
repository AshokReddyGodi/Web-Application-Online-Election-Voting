package com.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.DeleteNomineesBean;
import com.mvc.dao.DeleteNomineesDao;



/**
 * Servlet implementation class Delete_Author_Servlet
 */
@WebServlet("/DeleteNominees")
public class DeleteNominees extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		String nomineename=request.getParameter("nomineename");
		System.out.println("in servlet"+nomineename);
		DeleteNomineesBean nomineeBean = new DeleteNomineesBean();

		System.out.println(" before"+nomineename);
		nomineeBean.setNomineeName(nomineename);
		System.out.println("after");
		DeleteNomineesDao userdao = new DeleteNomineesDao();
		System.out.println("123");
		String userRegistered = userdao.nomineename(nomineeBean);
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
			request.getRequestDispatcher("/DeleteNominees.jsp").forward(request, response);
		}
	}
	}


