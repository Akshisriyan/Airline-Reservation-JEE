<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
          <table>
            <thead>
              <tr>
                <th>Flight ID</th>
                <th>From</th>
                <th>Destination</th>
                <th>Plane Type</th>
                <th>Available Seats</th>
                 <th>Date and Time</th>
                  <th></th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>UML4980</td>
                <td>Japan</td>
                <td>Venezula</td>
                <td>Boeing727</td>
                <td>18</td>
                <td>2022/10/08<br>1.00PM</td>
                <td><div>
                               
                          </div></td>
                
              </tr>
              <tr>
                <td>UML4981</td>
                <td>India</td>
                <td>Switzerland</td>
                <td>Boeing747-8</td>
                <td>20</td>
                <td>2022/10/08<br>3.00PM</td>
                <td><div>
                                
                          </div></td>
              </tr>
              <tr>
                <td>UML4950</td>
                <td>USA</td>
              
                <td>France</td>
                <td>Boeing780</td>
                <td>24</td>
                <td>2022/10/09<br>6.00PM</td>
                <td><div>
                                
                          </div></td>
                
              </tr>
              <tr>
                <td>UML4980</td>
                <td>Japan</td>
                <td>Venezulaa</td>
                <td>Boeing747-8</td>
                <td>3</td>
                <td>2022/10/09<br>1.00PM</td>
                <td><div>
                                
                          </div></td>
              </tr>
             
            </tbody>
          </table>
        </div>

</div>
</div>
</div>





</body>
</html>
