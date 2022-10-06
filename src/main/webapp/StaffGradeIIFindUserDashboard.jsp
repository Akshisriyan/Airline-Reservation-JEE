<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.sql.*" %>
    
    
<!DOCTYPE html>
<html>
<head>
	<title>Phoenix Airline</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="StaffGradeIIFindUserDashboard.css">
</head>
<body>
	<input type="checkbox" id="checkbox">
	<header class="header">
		<h2 class="u-name">Staff <b>Grade II</b>
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
					<a href="StaffGradeIIDashboard.jsp">
						<i class="fa fa-desktop" aria-hidden="true"></i>
						<span>Dashboard</span>
					</a>
				</li>
				<li>
					<a href="StaffGII Flight.jsp">
						<i class="fa fa-plane" aria-hidden="true"></i>
						<span>Add Flight Details</span>
					</a>
				</li>
				
				<li>
					<a href="StaffGradeIIFindUserDashboard.jsp">
						<i class="fa fa-address-card" aria-hidden="true"></i>
						<span> User Dashboard</span>
					</a>
				</li>
				<li>
					<a href="loginstaff.jsp">
						<i class="fa fa-power-off" aria-hidden="true"></i>
						<span>Logout</span>
				</a>
				</li>
			</ul>
		</nav>
		<div class="main-body">
			
			<div class="promo_card">
			  <h1>Find User Dashboard </h1>
			  <h3>Home/FindUserDashboard</h3>
			</div>
            <br><br>
			<div class="history_lists">
				<div class="list1">
				  <div class="row">
					
					
				  </div>

	
					
				  </div>



<form id="form" method="post" action="StaffGradeIIFindUserDashboard.jsp" >
         
<input type="text" name="eid" id="eid" placeholder="UserID"/>
<button>submit</button>		  

<h1 text-align:center>USERS</h1>                
                     
						<% 
						

Connection con;
PreparedStatement pst;
ResultSet rs;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phonix","root","25069499");

String eid=request.getParameter("eid");

if(eid==null || eid.isEmpty())
{
	pst=con.prepareStatement("select * from user");
	rs=pst.executeQuery();
	
	while(rs.next())
	{
		out.println("<table>");
		out.println("<tr>");
		out.println("<th>User ID</th>");
		out.println("<th>First Name</th>");
		out.println("<th>Last Name</th>");
		out.println("<th>User Name</th>");
		out.println("<th>Email</th>");
		out.println("<th>Phone</th>");
		out.println("<th>NIC</th>");
		out.println("<th>BirthDay</th>");
		out.println("<th>Country</th>");
		out.println("<th>Country Code</th>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<td>" +rs.getInt("uid") + "</td>");
		out.println("<td>" +rs.getString("fname") + "</td>");
		out.println("<td>" +rs.getString("lname") + "</td>");
		out.println("<td>" +rs.getString("username") + "</td>");
		out.println("<td>" +rs.getString("email") + "</td>");
		out.println("<td>" +rs.getString("phone") + "</td>");
		out.println("<td>" +rs.getString("nic") + "</td>");
		out.println("<td>" +rs.getString("bdate") + "</td>");
		out.println("<td>" +rs.getString("country") + "</td>");
		out.println("<td>" +rs.getString("ccode") + "</td>");
		out.println("</TR>");
		out.println("</table>");
	}
	
}
else
{
pst=con.prepareStatement("select * from user where uid=? ");
pst.setString(1, eid);

rs=pst.executeQuery();
while(rs.next())
{
	out.println("<table>");
	out.println("<tr>");
	out.println("<th>User ID</th>");
	out.println("<th>First Name</th>");
	out.println("<th>Last Name</th>");
	out.println("<th>User Name</th>");
	out.println("<th>Email</th>");
	out.println("<th>Phone</th>");
	out.println("<th>NIC</th>");
	out.println("<th>BirthDay</th>");
	out.println("<th>Country</th>");
	out.println("<th>Country Code</th>");
	out.println("</tr>");
	
	out.println("<tr>");
	out.println("<td>" +rs.getInt("uid") + "</td>");
	out.println("<td>" +rs.getString("fname") + "</td>");
	out.println("<td>" +rs.getString("lname") + "</td>");
	out.println("<td>" +rs.getString("username") + "</td>");
	out.println("<td>" +rs.getString("email") + "</td>");
	out.println("<td>" +rs.getString("phone") + "</td>");
	out.println("<td>" +rs.getString("nic") + "</td>");
	out.println("<td>" +rs.getString("bdate") + "</td>");
	out.println("<td>" +rs.getString("country") + "</td>");
	out.println("<td>" +rs.getString("ccode") + "</td>");
	out.println("</TR>");
	out.println("</table>");
}
}

%>





</form>

					</body>
					</html>
				 
                      