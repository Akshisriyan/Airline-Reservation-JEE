package com.customer;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@jakarta.servlet.annotation.WebServlet("/CustomerInsertServ")
public class CustomerInsertServ extends HttpServlet {
    
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Getting Parametars from user.jsp......
		String  FNAME = request.getParameter("fname");
		
		String  LNAME = request.getParameter("lname");
		
		String  EMAIL = request.getParameter("email");
		
		String  CONTACT = request.getParameter("contact_no");
		
		String  NIC = request.getParameter("nic_no");
		
		String  BIRTHDAY = request.getParameter("birthday");
		
		String  COUNTRY = request.getParameter("country");
		
		String  COUNTRYCODE = request.getParameter("country_code");
		
		String  PASSWORD = request.getParameter("password");
		
		
		
		//calling insertcustomer() Methode.......
		boolean isTrue;
		
		isTrue = CustomerDBUtil.insertcustomer(FNAME, LNAME, EMAIL, CONTACT, NIC, BIRTHDAY, COUNTRY, COUNTRYCODE, PASSWORD);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
		}
   }	

}
