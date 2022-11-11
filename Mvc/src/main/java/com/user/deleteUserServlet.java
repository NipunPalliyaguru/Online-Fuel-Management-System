package com.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/delete")
public class deleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		
		String value = request.getParameter("email");
		boolean isTrue;
		
		isTrue = userDBUtill.deleteUser(value);
		userDBUtill.deleteUser(value);
		
		if (isTrue == true) {
			request.setAttribute("delete", "Account Successfully Deleted ");
			RequestDispatcher dispatcher = request.getRequestDispatcher("Login.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<User> us = userDBUtill.getUserDetails(value);
			request.setAttribute("us", us);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("invalid.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
	}
		
		
		
	

}
