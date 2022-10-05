package com.customer;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@jakarta.servlet.annotation.WebServlet("/CustomerInsertServ")
public class CustomerInsertServ extends HttpServlet {
    
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		//Getting Parametars from user.jsp......
		String  FNAME = request.getParameter("fname");
		
		String  LNAME = request.getParameter("lname");
		
		String  UNAME = request.getParameter("username");
		
		String  EMAIL = request.getParameter("email");
		
		String  CONTACT = request.getParameter("contact_no");
		
		String  NIC = request.getParameter("nic_no");
		
		String  BIRTHDAY = request.getParameter("birthday");
		
		String  COUNTRY = request.getParameter("country");
		
		String  COUNTRYCODE = request.getParameter("country_code");
		
		String  PASSWORD = request.getParameter("password");
		
		String  CONFIRMPASSWORD = request.getParameter("confirm_password");
		
		//calling insertcustomer() Methode.......
		boolean isTrue;
		
		isTrue = CustomerDBUtil.insertcustomer(FNAME, LNAME, UNAME, EMAIL, CONTACT, NIC, BIRTHDAY, COUNTRY, COUNTRYCODE, PASSWORD, CONFIRMPASSWORD );
		
		if(isTrue == true) {
			 if(PASSWORD.equals(CONFIRMPASSWORD))
			 {
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Account Created. Log In Here');");
			out.println("location = 'login.jsp'");
			out.println("</script>");
		    } 
			else
			{
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Password Mismatch. Try again ');");
			out.println("location = 'user.jsp'");
			out.println("</script>");	
			}
		}
		
		else {
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
   }	

}
