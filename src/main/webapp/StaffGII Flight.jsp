<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>StaffGII Flight</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="StaffGII Flight.css">
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
					<a href="#">
						<i class="fa fa-desktop" aria-hidden="true"></i>
						<span>Dashboard</span>
					</a>
				</li>
				<li>
					<a href="#">
						<i class="fa fa-plane" aria-hidden="true"></i>
						<span>Add Fight Details</span>
					</a>
				
				<li>
					<a href="#">
						<i class="fa fa-address-card" aria-hidden="true"></i>
						<span> User Dashboard</span>
					</a>
				</li>
				<li>
					<a href="#">
						<i class="fa fa-power-off" aria-hidden="true"></i>
						<span>Log out</span>
					</a>
				</li>
			</ul>
		</nav>
		<div class="main-body">
			
			<div class="promo_card">
			  <h1>Add Flight Details</h1>
			  <h4>Home/AddFlightDetails</h4>
			  
			</div>
	  <br>
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
                 <th>Date </th>
                  <th></th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>UML4980</td>
                <td>Japan</td>
                <td>Venezula</td>
                <td>Boeing727</td>
                <td><center>18</center></td>
                <td><center>2022/10/08</center></td>
               
                
              </tr>
              <tr>
                <td>UML4981</td>
                <td>India</td>
                <td>Switzerland</td>
                <td>Boeing747-8</td>
                <td><center>20</center></td>
                <td><center>2022/10/08</center></td>
                
              <tr>
                <td>UML4950</td>
                <td>USA</td>
              
                <td>France</td>
                <td>Boeing780</td>
                <td><center>24</center></td>
                <td><center>2022/10/09</center></td>
               
              <tr>
                <td>UML4980</td>
                <td>Japan</td>
                <td>Venezula</td>
                <td>Boeing747-8</td>
                <td><center>31</center></td>
                <td><center>2022/10/09</center></td>
                
             
            </tbody>
          </table>
        </div>
</div>
</div>

    <div class="sidebar">
      <h3>Account Balance</h3>
      
      <div class="form-group">
        <label for="name"><b>Flight ID :</b></label>
            <input type="text" required>
        </div><br>
        <div class="form-group">
          <label for="name"><b> From:</b></label>
          <input type="text" required>
        </div><br>

        <div class="form-group">
          <label for="name"><b> Destination:</b></label>
          <input type="text" required>
        </div><br>

        <div class="form-group">
          <label for="name"><b> Plane Type:</b></label>
          <input type="text" required>
        </div><br>

        <div class="form-group">
          <label for="name"><b> Available Seats:</b></label>
          <input type="text" required>
        </div><br>

        <div class="form-group">
          <label for="name"><b>Date:</b></label>
          <input type="text" required>
        </div><br>
      
        <div class="form-group">
          <input type="submit" value="ADD" class="submit_btn"><br>
        
    </div> 
    
</div>
</div>
</div>
</div>
</div>
</body>
</html>