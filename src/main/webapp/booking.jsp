<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Booking Flight</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="Booking.css">
</head>
<body>
	<input type="checkbox" id="checkbox">
	<header class="header">
		<h2 class="u-name">Flight <b>Booking</b>
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
					<a href="index.jsp">
						<i class="fa fa-power-off" aria-hidden="true"></i>
						<span>Logout</span>
					</a>
				</li>
			</ul>
		</nav>
		<div class="main-body">
			
			
            <br><br>
			<div class="history_lists">
				<div class="list1">
				  <div class="row">
					
					
				  </div>
				 
				<div class="card1">
                    <td> <center><b>Flight Booking Section</b></center></td>
			 <br>
                    <tr>
                             <div class="radio-btn">
                              <td><input type="radio" class="btn" name="check" checked="checked"><span>Round Trip</span> 
                              <input type="radio" class="btn" name="check"><span>On Way</span>  
                              </td>     
                             </div>
                         </tr>
                          <br>
                         <tr>
                            <div class="booking-form">
                                <td>
                                   
                                    <span>FROM</span> <input type="text" class="form-control" placeholder=""></td>
                                  </tr>
                                 
                                   <tr>
                                   

                                    <td><span>TO</span><input type="text" class="form-control" placeholder=""></td>
                                
                                </div>
                            </tr>
                         <br>
                     <tr>
                         <div class="input-grp">
                         <td><input type="date" class="form-control select-date" >
                             <input type="date" class="form-control select-date" ></td>
                         </div>   
                         </tr>
                         <br>
                         
                         <tr>
                             <div class="booking-grp">
                             <td>
                                 <label>Passport ID :-</label>
                                 <input type="text" class="form-control" placeholder="">
                             </td>
                         </div>
                         </tr>
                         <br>
                         
                         <tr>
                             <div class="input-gp">
                             <td>
                                 <label>Flight ID & Name :-</label>
                                 <input type="text" class="form-control" placeholder=""><br><br>
                                 <label>Ticket Price :-</label>
                                 <input type="text" class="form-control" placeholder="">
                             </td>
                         </div>
                         </tr>
                         <br><br><br>
                         <tr>
                             <div class="submit-btn">
                             <td>
                                 <a href="payment.jsp" class="btn">Book Now</a></td>
                             </div>
                         </tr>





                </div>
					  
					
				
				</div>
				<header>
               
					<div class="card">
						<table>
                            <thead>
                              <tr>
                                <th>Flight ID</th>
                                <th>From</th>
                                <th>Destination</th>
                                <th>Plane Type</th>
                                <th>Available Seats</th>
                                 <th>Date and time</th>
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
                                <td><center>2022/10/08 1.00AM</center></td>
                               
                                
                              </tr>
                              <tr>
                                <td>UML4981</td>
                                <td>India</td>
                                <td>Switzerland</td>
                                <td>Boeing747-8</td>
                                <td><center>20</center></td>
                                <td><center>2022/10/10 3.00PM</center></td>
                                
                              <tr>
                                <td>UML4950</td>
                                <td>USA</td>
                              
                                <td>France</td>
                                <td>Boeing780</td>
                                <td><center>24</center></td>
                                <td><center>2022/10/12 6.00AM</center></td>
                               
                              <tr>
                                <td>UML4980</td>
                                <td>Japan</td>
                                <td>Venezula</td>
                                <td>Boeing747-8</td>
                                <td><center>31</center></td>
                                <td><center>2022/10/14 1.00PM</center></td>
                                
                             
                            </tbody>
                          </table>
                        <br>
                        <div class="form-group1">
							
						<input type="text" required>  
                          
                            <input type="submit" value="Search" class="submit_btn"><br>
						</div>
                         
						
  
						</div>
				 </header>      
						
				  </tbody>
				  </table>
				  </div>
				  
					  
						</div>
						</div>
					  </div>
					  </div>
					  </body>
					  </html>
				   
	