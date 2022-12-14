<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Phoenix Airline</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="StaffGradeI UserDetails.css">
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
			  <h1>User Details</h1>
			  <h4>Home/UpdateUserDetails</h4>
			  
			</div>
	  <br>
	 
      <div class="history_lists">
        <div class="list1">
          <div class="row">
            
          </div>
          <table>
            <thead>
              <tr>
                <th>U-ID</th>
                <th>Name</th>
                <th>NIC</th>
                <th>Email</th>
                <th>T-Number</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>00125</td>
                <td>John Smith</td>
                <td>3658719AV</td>
                <td>Jone36@gmail.com</td>
                <td>01168439522</td>
             
                <td><a href="#" class="btn">Update</a>
                  <a href="#" class="btn">Block</a></td>
                
              </tr>
              <tr>
                <td>00126</td>
                <td>Clara Jane</td>
                <td>95698268BV</td>
                <td>Clara25@gmail.com</td>
                <td>0116698163</td>
                <td><a href="#" class="btn">Update</a>
                  <a href="#" class="btn">Block</a></td>
              </tr>
              <tr>
                <td>00127</td>
                <td>Sam Smith</td>
                
                <td>6456919DV</td>
                <td>Sam50@gmail.com</td>
                <td>0119558636</td>
               
                <td><a href="#" class="btn">Update</a>
                  <a href="#" class="btn">Block</a></td>
                
              </tr>
             
             
            </tbody>
          </table>
</div>
</div>
        </div>
        <div class="sidebar">
            <h3>Contact User</h3>
            
            <div class="form-group">
              <label for="name"><b>User Email :</b></label>
                  <input type="text" required>
              </div><br>
              <div class="form-group">
                <label for="name"><b> Chat with User</b></label>
                <input type="text" required>
              </div><br>
      
              
            
              <div class="form-group">
                <input type="submit" value="Submit" class="submit_btn"><br>
              
          </div>