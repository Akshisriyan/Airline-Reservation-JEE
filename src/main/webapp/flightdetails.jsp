<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     

    <%@page import="java.sql.*" %>

<!DOCTYPE html>

<html>
<head>
	<title>Phoenix Airline</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="flightdetail.css">
</head>
<body>
	<input type="checkbox" id="checkbox">
	<header class="header">
		<h2 class="u-name"> <b>Flight Details</b>
			<label for="checkbox">
				<i id="navbtn" class="fa fa-bars" aria-hidden="true"></i>
			</label>
		</h2>
		<i class="fa fa-user" aria-hidden="true"></i>
	</header>
	<div class="body">
		<nav class="side-bar">
     
          <div class="user-p">
            <img src="img/user.png.png">
            
          </div>
    
			
			<ul>
				
				<li>
					<a href="index.jsp">
						<i class="fa fa-home" aria-hidden="true"></i>
						<span>Home</span>
					</a>
				</li>
			</ul>
		</nav>
        <header>
               
            <div class="card">
 <form id="form" method="post" action="flightdetails.jsp" >
 <div class="form-group1">

                  <input type="text" name="eid" id="eid" placeholder="Flight ID"/>
<button>Search</button>	
     
<% 						

Connection con;
PreparedStatement pst;
ResultSet rs;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phonix","root","25069499");

String eid=request.getParameter("eid");

if(eid==null || eid.isEmpty())
{
	pst=con.prepareStatement("select * from flight");
	rs=pst.executeQuery();
	
	while(rs.next())
	{		
        out.println("<table>");
		out.println("<tr>");
		out.println("<th>Flight ID</th>");
		out.println("<th>From</th>");
		out.println("<th>Destination</th>");
		out.println("<th>Plane Type</th>");
		out.println("<th>Available Seats</th>");
		out.println("<th>Date</th>");
		out.println("<th>Time</th>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<td>" +rs.getInt("flightid") + "</td>");
		out.println("<td>" +rs.getString("from") + "</td>");
		out.println("<td>" +rs.getString("destination") + "</td>");
		out.println("<td>" +rs.getString("planetype") + "</td>");
		out.println("<td>" +rs.getString("availableseats") + "</td>");
		out.println("<td>" +rs.getString("date") + "</td>");
		out.println("<td>" +rs.getString("time") + "</td>");
		out.println("</tr>");
		out.println("</table>");
	}
	
}
else
{
pst=con.prepareStatement("select * from flight where flightid=? ");
pst.setString(1, eid);

rs=pst.executeQuery();
while(rs.next())
{
	  out.println("<table>");
		out.println("<tr>");
		out.println("<th>Flight ID</th>");
		out.println("<th>Start From</th>");
		out.println("<th>Destination</th>");
		out.println("<th>Plane Type</th>");
		out.println("<th>Available Seats</th>");
		out.println("<th>Date</th>");
		out.println("<th>Time</th>");
		out.println("</tr>");
	
	
	out.println("<tr>");
	out.println("<td>" +rs.getInt("flightid") + "</td>");
	out.println("<td>" +rs.getString("from") + "</td>");
	out.println("<td>" +rs.getString("destination") + "</td>");
	out.println("<td>" +rs.getString("planetype") + "</td>");
	out.println("<td>" +rs.getString("availableseats") + "</td>");
	out.println("<td>" +rs.getString("date") + "</td>");
	out.println("<td>" +rs.getString("time") + "</td>");
	out.println("</tr>");
	out.println("</table>");
}
}

%>
       
                        
                     
                   
                <br>
                
                 
                

                </div>
         </header>      
                
          </div>
          
             </form> 

              </body>
              </html>
           
