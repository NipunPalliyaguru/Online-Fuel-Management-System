package com.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/update")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//String id = request.getParameter("id");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String age = request.getParameter("age");
		String gender = request.getParameter("gender");
		String city = request.getParameter("city");
		String address = request.getParameter("address");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		

		boolean isTrue;
		
		
		isTrue = userDBUtill.userUPDATE(fname, lname, age,gender, city,address,tel, email, password);

		if (isTrue == true) {
			
			
			request.setAttribute("update", "Profile Suucessfully Updated ");
			RequestDispatcher dis = request.getRequestDispatcher("UpdateProfile.jsp");
			dis.forward(request, response);
		} else {

			RequestDispatcher dis = request.getRequestDispatcher("invalid.jsp");
			dis.forward(request, response);
		}
	}

}
