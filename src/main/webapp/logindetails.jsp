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
                        <a  href="adminstaffapp.jsp"><i class="fa fa-check-square fa-3x"></i> Staff Account Approval</a>
                    </li>	
                    <li  >
                        <a  href="adminstaff.jsp"><i class="fa fa-plus fa-3x"></i> Add Staff Members</a>
                    </li>
                    <li>
                        <a class="active-menu"  href="logindetails.jsp"><i class="fa fa-file fa-3x"></i> Login Details</a>
                    </li> 
                </ul>      
            </div>
            
        </nav>
             
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Login Details</h2>    
                    </div>
                </div>      
                

<!--table-->
                
                <div class="container">
                    <div class="row">
                      <div class="col-12">
                        <table class="table table-bordered">
                          <thead>
                            <tr>
                              <th scope="col">User ID</th>
                              <th scope="col">User Type</th>
                              <th scope="col">Last login Date/Time</th>
                              <th scope="col">IP</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              
                              <td>207912</td>
                              <td>Staff Grade 1</td>
                              <td>2022/09/13-8.00AM</td>
                              <td>172.145.23.1</td>
                              
                            </tr>
                            <tr>
                              
                              <td>20723</td>
                              <td>User</td>
                              <td>2022/09/05-9.45PM</td>
                              <td>192.14.223.2</td>
                            
                            </tr>
                            <tr>
                              
                              <td>215674</td>
                              <td>Staff Grade 2</td>
                              <td>2022/08/25-10.00AM</td>
                              <td>112.134.23.5</td> 
                            </tr>
                            <tr>
                                
                                <td>203452</td>
                              <td>Staff Grade 1</td>
                              <td>2022/08/18-6.00PM</td>
                              <td>12.135.2.64</td> 
                              </tr>
                              <tr>
                                
                                <td>22864</td>
                              <td>Staff Grade 1</td>
                              <td>2022/08/05-1.00PM</td>
                              <td>132.167.3.6</td>
                              </tr>
                              <tr>
                                
                                <td>22464</td>
                              <td>Staff Grade 1</td>
                              <td>2022/07/23-6.00AM</td>
                              <td>152.125.267.3</td>
                              </tr>
                              <tr>
                                
                                <td>216598</td>
                              <td>Staff Grade 1</td>
                              <td>2022/07/13-7.00PM</td>
                              <td>132.105.22.112</td>
                              </tr>



                          </tbody>
                        </table>
                      </div>
                    </div>
                


<!--table-->


    </div>

    
</body>
</html>
