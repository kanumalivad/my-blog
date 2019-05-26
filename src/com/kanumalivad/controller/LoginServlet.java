package com.kanumalivad.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.connector.Response;

import com.kanumalivad.model.User;
import com.kanumalivad.service.LoginService;


@WebServlet("/admin/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
   
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String userId = request.getParameter("userId");	
		 String password = request.getParameter("password");
		 
		 LoginService loginService = new LoginService();
		 boolean result = loginService.authenticateUser(userId, password);
		
		 User user = loginService.getUserByUserId(userId);
		 if(result == true){
			 request.getSession().setAttribute("user", user);		
			 response.sendRedirect("View.jsp");
		 }
		 else{
			 response.getWriter().write("User not Found");
		 }
		
		
	}

}
