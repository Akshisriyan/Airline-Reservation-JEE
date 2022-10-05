package com.addstaff;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@jakarta.servlet.annotation.WebServlet("/addStaffInsertServ")
public class addStaffInsertServ extends HttpServlet {
    
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
		
		//Getting Parametars from staff.jsp......
		PrintWriter out = response.getWriter();
		
		String  LNAME = request.getParameter("lname");
		
		String  EMAIL = request.getParameter("email");
		
		String  CONTACT = request.getParameter("contact_no");
		
		String  NIC = request.getParameter("nic_no");
		
		String  PASSWORD = request.getParameter("password");
		
		String  CONFIRMPASSWORD = request.getParameter("confirm_password");
		
		String  GRADE = request.getParameter("grade");
	
		String  STATUS = "true";
		//calling insertcustomer() Methode
				boolean isTrue;
				
				isTrue = addStaffDBUtil.insertaddstaff(LNAME, EMAIL, CONTACT, NIC, PASSWORD,GRADE,CONFIRMPASSWORD,STATUS);
				
				if(isTrue == true) {
					out.println("<script type = 'text/javascript'>");
					out.println("alert('Account Created');");
					out.println("location = 'admindash.jsp'");
					out.println("</script>");
				} else {
					RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
					dis.forward(request, response);
				}
	
		}
		
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
   }	

}
