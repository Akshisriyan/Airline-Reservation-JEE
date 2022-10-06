package com.flights1;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@jakarta.servlet.annotation.WebServlet("/FlightInsertServ1")
public class FlightInsertServ1 extends HttpServlet {
    
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
		
		//Getting Parametars from staff.jsp......
		PrintWriter out = response.getWriter();
		
		Integer FLIGHTID = Integer.parseInt(request.getParameter("Fid"));
		
		String  FROM = request.getParameter("from");
		
		String  DESTINATION = request.getParameter("des");
		
        String  PLANETYPE = request.getParameter("pt");
		
		String  AVAILABLESEATS = request.getParameter("as");
		
		String  DATE = request.getParameter("date");
		
		String  TIME = request.getParameter("time");
		

		//calling insertcustomer() Methode
				boolean isTrue;
				
				isTrue = FlightDBUtil1.insertflights(FLIGHTID,FROM,DESTINATION,PLANETYPE,AVAILABLESEATS,DATE,TIME);
				
				if(isTrue == true) {
					out.println("<script type = 'text/javascript'>");
					out.println("alert('Flight Details Successfully Added');");
					out.println("location = 'StaffGI FlightDe.jsp'");
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
