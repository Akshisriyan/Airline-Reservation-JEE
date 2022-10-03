package com.staff;

import java.io.IOException;
import java.io.PrintWriter;

import javax.swing.JOptionPane;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@jakarta.servlet.annotation.WebServlet("/StaffInsertServ")
public class Grade1InsertServ extends HttpServlet {
    
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Getting Parametars from user.jsp......
		PrintWriter out = response.getWriter();
		
		String  LNAME = request.getParameter("lname");
		
		String  EMAIL = request.getParameter("email");
		
		String  CONTACT = request.getParameter("contact_no");
		
		String  NIC = request.getParameter("nic_no");
		
		String  PASSWORD = request.getParameter("password");
		
		String  GRADE = request.getParameter("grade");
		
		String  CONFIRMPASSWORD = request.getParameter("confirm_password");
		
		String  STATUS = "false";

	
		
		//calling insertcustomer() Methode
		boolean isTrue;
		
		isTrue = StaffDBUtil.insertgrade1(LNAME, EMAIL, CONTACT, NIC, PASSWORD,GRADE,CONFIRMPASSWORD,STATUS);
		
		if(isTrue == true) {
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Account Created. Wait for admin approval');");
			out.println("location = 'loginstaff.jsp'");
			out.println("</script>");
		} else {
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
   }	

}
