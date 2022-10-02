<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Staff1TicketInfo</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="Staff1TicketInfo.css">
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
			  <h1>Ticket Information</h1>
			  <h4>Home/TicketInformation</h4>
			  
			</div>
	  <br>
	 
      <div class="history_lists">
        <div class="list1">
          <div class="row">
            
          </div>
          <table>
            <thead>
              <tr>
                <th>User ID</th>
                <th>Ticket ID</th>
                <th>Flight ID</th>
                <th>Gate</th>
                <th>Seats</th>
                 <th>Date</th>
                  <th></th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>22893</td>
                <td>Ex 123</td>
                <td>UML4980</td>
                <td>A2</td>
                <td>30F</td>
                <td>2022/10/08</td>
                <td><a href="#" class="btn">Update</a>
                  <a href="#" class="btn">Delete</a></td>
                
              </tr>
              <tr>
                <td>22845</td>
                <td>Ex 266</td>
                <td>UML4981</td>
                <td>B5</td>
                <td>38G</td>
                <td>2022/10/10</td>
                <td><a href="#" class="btn">Update</a>
                  <a href="#" class="btn">Delete</a></td>
              </tr>
              <tr>
                <td>22345</td>
                <td>Ex 154</td>
              
                <td>UML4950</td>
                <td>A1</td>
                <td>30E</td>
                <td>2022/10/12</td>
                <td><a href="#" class="btn">Update</a>
                  <a href="#" class="btn">Delete</a></td>
                
              </tr>
              <tr>
                <td>22322</td>
                <td>Ex 294</td>
                <td>UML4980</td>
                <td>C1</td>
                <td>25A</td>
                <td>2022/10/14</td>
                <td><a href="#" class="btn">Update</a>
                  <a href="#" class="btn">Delete</a></td>
              </tr>
             
            </tbody>
          </table>
        </div>