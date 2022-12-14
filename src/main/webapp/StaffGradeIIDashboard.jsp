<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib  uri ="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
     <% response.setHeader("Cache-Control","no-cache, no-store");
    %>
<!DOCTYPE html>
<html>
<head>
	<title>Phoenix Airline</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="staffgradeiidash.css">
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
			  <h1>Welcome !!!.... <em>Staff Grade II Dashboard</em></h1>
			  <h3>Home/StaffGradeIIDashboard</h3>
			  
			</div>
	  <br><br><br>
			<div class="promo_card1">
				<h5>Your Details</h5>
				

			</div>
				
	
				<div class="history_lists">
					<div class="list1">
					  <div class="row">
						
						
					  </div>
					  <table>
						<thead>
							
						</thead>
						<tbody>
							<tr>
								<td><img src="img/1.jfif" alt="">
									
							</tr>
								
								
							  <c:forEach var = "stf1" items = "${grade1Info}">
							
						  
						  
						   
							<tr>
							<td><b>Your Grade</b></td>
							<td><b>:<c:out value = "${stf1.GRADE}"/></b></td>
						  </tr>
						  <tr>
							<td><b>Your ID</b></td>
							<td><b><c:out value = ":${stf1.SID}"/></b></td>
							
						  </tr>
						  <tr>
							<td><b>User Name</b></td>
							<td><b>:<c:out value = "${stf1.USERNAME}"/></b></td>
						  </tr>
						  <tr>
							<td><b>Email</b></td>
							<td><b>:<c:out value = "${stf1.EMAIL}"/></b></td>
						  </tr>
						  <tr>
							<td><b>Phone</b></td>
							<td><b>:<c:out value = "${stf1.PHONE}"/></b></td>
						  </tr>
						  <tr>
							<td><b>NICe</b></td>
							<td><b>:<c:out value = "${stf1.NIC}"/></b></td>
						  </tr>
						  
						  </c:forEach>
						  
						  </tbody>
						  </table>
						  </div>
						  
						  </div>
						</div>
					  </div>
				  </body>
				  </html>
						
	  
		  
	