<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib  uri ="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
<head>
	<title>Phoenix Airline</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="Staff1TicketInfo.css">
</head>
<body>
	<input type="checkbox" id="checkbox">
	<header class="header">
		<h2 class="u-name"> <b>USER</b>
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
					<a href="booking.jsp">
						<i class="fa fa-ticket" aria-hidden="true"></i>
						<span>Booking</span>
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
			  <h1>Welcome..!!!</h1>
			 
			  
			</div>
	  <br>
	 
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
								
								
							  <c:forEach var = "user" items = "${userInfo}">
							
						  
						  
						   
							
						  <tr>
							<td><b>Your ID</b></td>
							<td><b><c:out value = ":${user.UID}"/></b></td>
							
						  </tr>
						  <tr>
							<td><b>User Name</b></td>
							<td><b>:<c:out value = "${user.USERNAME}"/></b></td>
						  </tr>
						  <tr>
							<td><b>Email</b></td>
							<td><b>:<c:out value = "${user.EMAIL}"/></b></td>
						  </tr>
						  <tr>
							<td><b>Phone</b></td>
							<td><b>:<c:out value = "${user.PHONE}"/></b></td>
						  </tr>
						  <tr>
							<td><b>NICe</b></td>
							<td><b>:<c:out value = "${user.NIC}"/></b></td>
						  </tr>
						  <tr>
							<td><b>Birthday</b></td>
							<td><b>:<c:out value = "${user.BDATE}"/></b></td>
						  </tr>
						  <tr>
							<td><b>Country</b></td>
							<td><b>:<c:out value = "${user.COUNTRY}"/></b></td>
						  </tr>
						  
						  <td><a href="login.jsp" class="btn">Cancel</a>
					<a href="user.jsp" class="btn">Update</a></td>
						  
						  </c:forEach>
						  
						  </tbody>
				
			</tbody>
			</table>
			</div>
			
			</div>
		  </div>
		</div>
	</body>
	</html>
		  