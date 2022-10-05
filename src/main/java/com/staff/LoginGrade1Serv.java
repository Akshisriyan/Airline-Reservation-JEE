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
		String GRADE = request.getParameter("grade");
		
		boolean isTrue;
		
		//Pass the User's username and password to the CustomerDBUtil.java > validate() method and assign boolean value to "isTrue" variable
		isTrue = StaffDBUtil.validateGrade1(USERNAME , PASSWORD, GRADE ); //ok
		
		
		if (isTrue == true) {
			
			
			
			if(GRADE.equals("Grade 1" ) ) 
			{
				List<Grade1> grade1Info = StaffDBUtil.getGrade1(USERNAME,PASSWORD);
				request.setAttribute("grade1Info", grade1Info);
				RequestDispatcher dis = request.getRequestDispatcher("staffGradeIDashboard.jsp");
				dis.forward(request, response);
				return;
			}
			else if(GRADE.equals("Grade 2")  ) 
			{
				List<Grade1> grade1Info = StaffDBUtil.getGrade1(USERNAME,PASSWORD);
				request.setAttribute("grade1Info", grade1Info);
				RequestDispatcher dis = request.getRequestDispatcher("StaffGradeIIDashboard.jsp");
				dis.forward(request, response);
				return;
			}
			
			
		}
		
		else
		{

			out.println("<script type = 'text/javascript'>");
			out.println("alert('Wrong Details. Try again');");
			out.println("location = 'loginstaff.jsp'");
			out.println("</script>");
		
	}

}
}
