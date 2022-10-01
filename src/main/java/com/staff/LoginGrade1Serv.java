package com.staff;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class LoginGrade1Serv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginGrade1Serv() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//getting Username and Password fron Login page...
		String USERNAME = request.getParameter("Username");
		String PASSWORD = request.getParameter("Password");
		//String GRADE = request.getParameter("grade");
		boolean isTrue;
		
		//Pass the User's username and password to the CustomerDBUtil.java > validate() method and assign boolean value to "isTrue" variable
		isTrue = StaffDBUtil.validateGrade1(USERNAME , PASSWORD ); //ok
		
		
		if (isTrue == true ) {
			List<Grade1> grade1Info = StaffDBUtil.getGrade1(USERNAME);
			request.setAttribute("grade1Info", grade1Info);
			RequestDispatcher dis = request.getRequestDispatcher("staffaccount.jsp");
			dis.forward(request, response);
		} else
		{
			out.println("<script type = 'text/javascript>");
			out.println("alert(Your User Name Or Password is Incorrect.);");
			out.println("location = 'login.jsp'");
			out.println("</script");
		
	}

}
}
