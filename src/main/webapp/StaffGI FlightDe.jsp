<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>Phoenix Airline</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="StaffGI FlightDe.css">
</head>
<body>
	<input type="checkbox" id="checkbox">
	<header class="header">
		<h2 class="u-name">Staff <b>Grade I</b>
			<label for="checkbox">
				<i id="navbtn" class="fa fa-bars" aria-hidden="true"></i>
			</label>
		</h2>
		<i class="fa fa-user" aria-hidden="true"></i>
	</header>
	<div class="body">
		<nav class="side-bar">
			
			<ul>
				<li>
					<a href="staffGradeIDashboard.jsp">
						<i class="fa fa-desktop" aria-hidden="true"></i>
						<span>Dashboard</span>
					</a>
				</li>
				<li>
					<a href="StaffGI FlightDe.jsp">
						<i class="fa fa-plane" aria-hidden="true"></i>
						<span>Fight Details</span>
					</a>
				</li>
				<li>
					<a href="Staff1TicketInfo.jsp">
						<i class="fa fa-ticket" aria-hidden="true"></i>
						<span>Ticket Info</span>
					</a>
				</li>
				<li>
					<a href="StaffGradeIUserDetails.jsp">
						<i class="fa fa-users" aria-hidden="true"></i>
						<span>Update User Details</span>
					</a>
				</li>
				<li>
					<a href="StaffGradeIFind userDashboard.jsp">
						<i class="fa fa-address-card" aria-hidden="true"></i>
						<span>Find User Dashboard</span>
					</a>
				</li>
				<li>
					<a href="index.jsp">
						<i class="fa fa-power-off" aria-hidden="true"></i>
						<span>Logout</span>
					</a>
				</li>
			</ul>
		</nav>
		<div class="main-body">
			
			<div class="promo_card">
			  <h1>Flight Details</h1>
			  <h4>Home/FlightDetails</h4>
			  
			</div>
	  <br><br><br>
	 
      <div class="history_lists">
        <div class="list1">
          <div class="row">
            
          </div>
          
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
			out.println("<thead>");
			out.println("<tr>");
			out.println("<th>Flight ID</th>");
			out.println("<th>Start From</th>");
			out.println("<th>Destination</th>");
			out.println("<th>Plane Type</th>");
			out.println("<th>Available Seats</th>");
			out.println("<th>Date</th>");
			out.println("<th>Time</th>");
			out.println("</tr>");
			out.println("</thead>");
		
		out.println("<tbody>");
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
            
           <form action = "addflight1" method = "POST">    
                </div>
</div>
</div>


      
 

    <div class="sidebar">
      <h3>Account Balance</h3>
      
      <div class="form-group">
        <label for="name"><b>Flight ID :</b></label>
            <input type="text" name="Fid" required>
        </div><br>
        <div class="form-group">
          <label for="name"><b> From:</b></label>
          <input type="text" name="from" required>
        </div><br>

        <div class="form-group">
          <label for="name"><b> Destination:</b></label>
          <input type="text" name="des" required>
        </div><br>

        <div class="form-group">
          <label for="name"><b> Plane Type:</b></label>
          <input type="text" name="pt" required>
        </div><br>

        <div class="form-group">
          <label for="name"><b> Available Seats:</b></label>
          <input type="text" name="as" required>
        </div><br>

        <div class="form-group">
          <label for="name"><b>Date:</b></label>
          <input type="text" name="date" required>
        </div><br>
        
        <div class="form-group">
          <label for="name"><b>Time:</b></label>
          <input type="text" name="time" required>
        </div><br>
      
      
      
        <div class="form-group">
          <input type="submit" value="ADD" class="submit_btn"><br>
        
    </div> 
    </div>
    
</form>
</div>


</body>
</html>