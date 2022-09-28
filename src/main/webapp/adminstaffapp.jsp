<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Free Bootstrap Admin Template : Binary Admin</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="AdDash/assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="AdDash/assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="AdDash/assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

   <link href="AdDash/assets/css/table.css" rel="stylesheet" />


</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="AdminDboared.html">Admin</a> 
            </div>
  <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;"> Last access : 30 September 2022 &nbsp; <a href="#" class="btn btn-danger square-btn-adjust">Logout</a> </div>
        </nav>   
           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				<li class="text-center">
                    <img src="AdDash/assets/img/find_user.png" class="user-image img-responsive"/>
					</li>
				
                    <li  >
                        <a  href="admindash.jsp"><i class="fa fa-dashboard fa-3x"></i> Dashboared</a>
                    </li>
                    <li  >
                        <a  class="active-menu"  href="adminstaffapp.jsp"><i class="fa fa-check-square fa-3x"></i> Staff Account Approval</a>
                    </li>	
                    <li  >
                        <a  href="adminstaff.jsp"><i class="fa fa-plus fa-3x"></i> Add Staff Members</a>
                    </li>
                    <li>
                        <a  href="logindetails.jsp"><i class="fa fa-file fa-3x"></i> Login Details</a>
                    </li> 
                </ul>      
            </div>
            
        </nav>
           
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Staff Account Approval</h2>    
                    </div>
                </div>      
                

<!--table-->
                
                <div class="container">
                    <div class="row">
                      <div class="col-12">
                        <table class="table table-bordered">
                          <thead>
                            <tr>
                              <th scope="col">Name</th>
                              <th scope="col">E-Mail</th>
                              <th scope="col">Contact No.</th>
                              <th scope="col">NIC</th>
                              <th scope="col">Approval</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              
                              <td>John</td>
                              <td>User</td>
                              <td>22791</td>
                              <td>2.846</td>
                              <td><div>
                                <button class="btnn btnn--radius-2 btn--red" type="submit">Accept</button>
                              <button class="btnn btnn--radius-2 btn--red" type="submit">Discard</button>
                          </div></td>
                              
                            </tr>
                            <tr>
                              
                              <td>Sam</td>
                              <td>Staff Grade 1</td>
                              <td>202014</td>
                              <td>2.846</td>
                              <td><div>
                                <button class="btnn btnn--radius-2 btn--red" type="submit">Accept</button>
                              <button class="btnn btnn--radius-2 btn--red" type="submit">Discard</button>
                          </div></td>
                            
                            </tr>
                            <tr>
                              
                              <td>User Account Created</td>
                              <td>Cristina</td>
                              <td>1.234</td> 
                              <td>2.846</td> 
                              <td><div>
                                <button class="btnn btnn--radius-2 btn--red" type="submit">Accept</button>
                              <button class="btnn btnn--radius-2 btn--red" type="submit">Discard</button>
                          </div></td>
                            </tr>
                            <tr>
                                
                                <td>Staff Member Added</td>
                                <td>Cristina</td>
                                <td>1.234</td> 
                                <td>2.846</td> 
                                <td><div>
                                  <button class="btnn btn--radius-2 btn--red" type="submit">Accept</button>
                                <button class="btnn btn--radius-2 btn--red" type="submit">Discard</button>
                            </div></td>
                              </tr>
                              <tr>
                                
                                <td>New Flight Details Added</td>
                                <td>Cristina</td>
                                <td>1.234</td> 
                                <td>2.846</td> 
                                <td><div>
                                  <button class="btnn btn--radius-2 btn--red" type="submit">Accept</button>
                                <button class="btnn btn--radius-2 btn--red" type="submit">Discard</button>
                            </div></td>
                              </tr>
                              <tr>
                                
                                <td>Staff Account Approved</td>
                                <td>Cristina</td>
                                <td>1.234</td>  
                                <td>2.846</td>
                                <td><div>
                                  <button class="btnn btn--radius-2 btn--red" type="submit">Accept</button>
                                <button class="btnn btn--radius-2 btn--red" type="submit">Discard</button>
                            </div></td>
                              </tr>
                              <tr>
                                
                                <td>Saff Account Created</td>
                                <td>Cristina</td>
                                <td>1.234</td>  
                                <td>2.846</td>
                                <td><div>
                                  <button class="btnn btn--radius-2 btn--red" type="submit">Accept</button>
                                <button class="btnn btn--radius-2 btn--red" type="submit">Discard</button>
                            </div></td>
                              </tr>



                          </tbody>
                        </table>
                      </div>
                    </div>
                


<!--table-->


    </div>

    


    
            
   
</body>
</html>
