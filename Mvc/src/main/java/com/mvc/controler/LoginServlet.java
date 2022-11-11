package com.mvc.controler;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.LoginBean;
import com.mvc.dao.LoginDao;
import com.user.User;
import com.user.userDBUtill;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

	public LoginServlet() {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userName = request.getParameter("username");
		String password = request.getParameter("password");

		LoginBean loginBean = new LoginBean();

		loginBean.setUserName(userName);
		loginBean.setPassword(password);

		LoginDao loginDao = new LoginDao();
		String userValidate = loginDao.authenticateUser(loginBean);

		userDBUtill.getUserDetails(userName);
		
		List<User> us = userDBUtill.getUserDetails(userName);
		request.setAttribute("us", us);

		if (userValidate.equals("SUCCESS1")) {
			request.setAttribute("userName", userName);
			request.getRequestDispatcher("userACC.jsp").forward(request, response);
			
			
		} else if (userValidate.equals("SUCCESS2")) {

			request.setAttribute("userName", userName);
			request.getRequestDispatcher("/Admin.jsp").forward(request, response);

		}

		{
			request.setAttribute("errMessage", userValidate);
			request.getRequestDispatcher("/Login.jsp").forward(request, response);
		}
	}
}