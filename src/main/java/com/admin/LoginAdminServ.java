package com.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.customer.CustomerDBUtil;
import com.customer.User;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class LoginAdminServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

  
    public LoginAdminServ() {
  
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//getting Username and Password fron Login page...
		String USERNAME = request.getParameter("Username");
		String PASSWORD = request.getParameter("Password");
		boolean isTrue;
		
		//Pass the User's username and password to the CustomerDBUtil.java > validate() method and assign boolean value to "isTrue" variable
		isTrue = AdminDBUtil.validateAdmin(USERNAME , PASSWORD);
		
		if (isTrue == true ) {
			List<Admin> adminInfo = AdminDBUtil.getAdmin(USERNAME);
			request.setAttribute("adminInfo", adminInfo);
			RequestDispatcher dis = request.getRequestDispatcher("admindash.jsp");
			dis.forward(request, response);
		} else
		{
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Your User Name Or Password is Incorrect.');");
			out.println("location = 'login.jsp'");
			out.println("</script>");
		
	}

}
		
	}


