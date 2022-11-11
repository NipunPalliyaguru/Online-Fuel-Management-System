package com.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/reset")
public class ResetPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String Email = request.getParameter("email");
		String Tel = request.getParameter("tel");
		
		boolean isTrue;
		
		 isTrue=userDBUtill.userReset(Email,Tel);

	

		if (isTrue==true) {
			request.setAttribute("Email2", Email);
			RequestDispatcher dis = request.getRequestDispatcher("ValidatePassword.jsp");
			dis.forward(request, response);
		}

		else {
			request.setAttribute("error", "Error ");
			RequestDispatcher dis = request.getRequestDispatcher("ResetPassword.jsp");
			dis.forward(request, response);

		}

	}
}
