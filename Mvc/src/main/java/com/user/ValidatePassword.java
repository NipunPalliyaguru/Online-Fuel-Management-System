package com.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/validate")
public class ValidatePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		
boolean isTrue;
		
		
		isTrue = userDBUtill.userValidatePssword(email, password);

		if (isTrue == true) {
			request.setAttribute("validate", "Password Successfully Reset ");
			RequestDispatcher dis = request.getRequestDispatcher("Login.jsp");
			dis.forward(request, response);
		} else {

			RequestDispatcher dis = request.getRequestDispatcher("invalid.jsp");
			dis.forward(request, response);
		}
	}
	}


