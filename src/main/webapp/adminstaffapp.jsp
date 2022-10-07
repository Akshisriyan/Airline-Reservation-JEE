<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    import java.sql.Connection;
    

     <%@ taglib  uri ="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
    
    <%@page import = "com.staff.approval" %>
    
    <%

    approval usss=(approval) session.getAttribute("usss");
    
    %>
  

<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Phoeinx Airline </title>
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
font-size: 16px;"> Last access : 7 October 2022 &nbsp; <a href="index.jsp" class="btn btn-danger square-btn-adjust">Logout</a> </div>
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

                <form action="admindash.jsp">
                <div class="container">
                    <div class="row">
                      <div class="col-12">
                        <table class="table table-bordered">
                          <thead>
                          
                          
                            <tr> 
                                                       
                              <th scope="col">UserName</th>
                              <th scope="col">NIC</th>   
                              <th scope="col">Email</th>
                              <th scope="col">Contact No.</th>
                              <th scope="col">GRADE</th>
                              <th scope="col">Approval</th>
                            </tr>
                          </thead>
                          <tbody>             
                     <tr>
                 
                              <td><%=usss.getUSERNAME() %></td>
                              <td><%=usss.getPHONE() %></td>
                              <td><%=usss.getEMAIL() %></td>
                              <td><%=usss.getGRADE() %></td>
                              <td><%=usss.getCONFIRMPASSWORD() %></td>
                              <td><div>
                                <a href="login.jsp"><input type="button"  class="btnn btnn--radius-2 btn--red" type="submit" value="Acceptt"  ><a href="login.jsp">
                              <input type="button" class="btnn btnn--radius-2 btn--red" type="submit" value="Discard">
                          </div>
                          </td>                    
                            </tr>

                          </tbody>
                        </table>
                      </div>
                    </div>
                </div>


<!--table-->
</form>

    </div>           
</body>
</html>
