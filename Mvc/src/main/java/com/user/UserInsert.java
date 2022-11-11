package com.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/insert")
public class UserInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		 
		String fname = request.getParameter("fname1");

		String lname = request.getParameter("lname1");
		
		String  age = request.getParameter("age1");
		
		String  gender = request.getParameter("gender1");
		
		String city = request.getParameter("city1");
		
		String address = request.getParameter("address1");
		
		String tel = request.getParameter("tel1");
		
		String email = request.getParameter("email1");

	
		String password = request.getParameter("password1");
		
		
		
		boolean isTrue;
	
		
		isTrue = userDBUtill.insertUser(fname,lname,age,gender,city,address,tel, email,password);
		
		if(isTrue == true) {
			
			request.setAttribute("create", "Profile Created Suucessfully");
			RequestDispatcher dis = request.getRequestDispatcher("Login.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("invalid.jsp");
			dis2.forward(request, response);
		}
				
		
		
		
	}

}
