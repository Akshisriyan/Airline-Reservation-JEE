<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib  uri ="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
<head>
	<title>StaffGIDashboard</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="staffGradeIDashboard.css">
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
			  <h1>Welcome !!!..... <em>Staff Grade I Dashboard</em></h1>
			  <h3>Home/StaffGradeIDashboard</h3>
			  
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
				  
						</div>
					  </div>
						 
			  </div>
			</div>
		  </div>
	  
		  
		</div>
	</div>

</body>
</html>