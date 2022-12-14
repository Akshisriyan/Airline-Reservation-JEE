package com.customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.staff.Grade1;
import com.staff.StaffDBUtil;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class LoginCustomerServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginCustomerServ() {
        super();
    }
    
    //Validate part
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//getting Username and Password fron Login page...
		String USERNAME = request.getParameter("Username");
		String PASSWORD = request.getParameter("Password");
		String CONFIRMPASSWORD = request.getParameter("ConfirmPassword");
		boolean isTrue;
		
		//Pass the User's username and password to the CustomerDBUtil.java > validate() method and assign boolean value to "isTrue" variable
		isTrue = CustomerDBUtil.validateUser(USERNAME , PASSWORD , CONFIRMPASSWORD);
		
		if (isTrue == true ) {
			
			List<User> userInfo = CustomerDBUtil.getUser(USERNAME,PASSWORD);
			request.setAttribute("userInfo", userInfo);
			RequestDispatcher dis = request.getRequestDispatcher("userinfo.jsp");
			dis.forward(request, response);
			return;
		}
		
		else if (USERNAME.equals("admin") && PASSWORD.equals("admin")   ) {
			List<User> userInfo = CustomerDBUtil.getUser(USERNAME,PASSWORD);
			request.setAttribute("userInfo", userInfo);
			RequestDispatcher dis = request.getRequestDispatcher("admindash.jsp");
			dis.forward(request, response);
			return;
		}
			else 
			{
				out.println("<script type = 'text/javascript'>");
				out.println("alert('Your User Name Or Password is Incorrect.');");
				out.println("location = 'login.jsp'");
				out.println("</script>");
			}
		
		
	}

}


