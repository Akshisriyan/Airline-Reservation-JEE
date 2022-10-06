<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
	<title>StaffGIFindUserDashboard</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="StaffGradeIFindUserDashboard.css">
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
			  <h1>Find User Dashboard </h1>
			  <h3>Home/FindUserDashboard</h3>
			</div>
            <br><br>
			<div class="history_lists">
				<div class="list1">
				  <div class="row">
					
					
				  </div>
<td><img src="img/1.jfif" alt=""></td>

<table class="table table-bordered">

                           
                     
                          <thead>
                            <tr>
                              <th scope="col">Activity</th>
                              <th scope="col">User Type</th>
                              <th scope="col">User ID</th>
                              <th scope="col">Date</th>
 </tr>
                          </thead>
<tbody>
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
		out.println("<Table border=1 >");
		out.println("<TR>");
		out.println("<TD>" +rs.getInt("uid") + "<TD>");
		out.println("<TD>" +rs.getString("fname") + "<TD>");
		out.println("<TD>" +rs.getString("lname") + "<TD>");
		out.println("<TD>" +rs.getString("username") + "<TD>");
		out.println("<TD>" +rs.getString("email") + "<TD>");
		out.println("<TD>" +rs.getString("phone") + "<TD>");
		out.println("<TD>" +rs.getString("nic") + "<TD>");
		out.println("<TD>" +rs.getString("bdate") + "<TD>");
		out.println("<TD>" +rs.getString("country") + "<TD>");
		out.println("<TD>" +rs.getString("ccode") + "<TD>");
		out.println("</TR>");
		out.println("<Table>");
	}
	
}
else
{
pst=con.prepareStatement("select * from user where uid=? ");
pst.setString(1, eid);

rs=pst.executeQuery();
while(rs.next())
{
	out.println("<Table border=1 bgcolor=yellow cellpadding=2 cellspacing=2>");
	out.println("<TR>");
	out.println("<TD>" +rs.getInt("uid") + "<TD>");
	out.println("<TD>" +rs.getString("fname") + "<TD>");
	out.println("<TD>" +rs.getString("lname") + "<TD>");
	out.println("<TD>" +rs.getString("username") + "<TD>");
	out.println("<TD>" +rs.getString("email") + "<TD>");
	out.println("<TD>" +rs.getString("phone") + "<TD>");
	out.println("<TD>" +rs.getString("nic") + "<TD>");
	out.println("<TD>" +rs.getString("bdate") + "<TD>");
	out.println("<TD>" +rs.getString("country") + "<TD>");
	out.println("<TD>" +rs.getString("ccode") + "<TD>");
	out.println("</TR>");
	out.println("<Table>");
}
}

%>

<form id="form" method="post" action="StaffGradeIFind userDashboard.jsp" >

<label>User ID</label>
<input type="text" name="eid" id="eid" placeholder="UserID"/>
<button>submit</button>



</form>

					</body>
					</html>
				 
                      