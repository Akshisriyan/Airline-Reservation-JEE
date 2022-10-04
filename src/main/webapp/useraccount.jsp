<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib  uri ="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hello User</title>
</head>
<body>


<table border = "1" width = "100%">
         <tr>
            <th>UserId</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>User Name</th>
            <th>Email</th>
            <th>Password</th>
            <th>ConfirmPassword</th>
            <th>Phone</th>
            <th>NIC</th>
            <th>Birth Date</th>
            <th>Country</th>
            <th>Country Code</th>
            
         </tr>
         
         <c:forEach var = "user" items = "${userInfo}">
            <tr>
               <td><c:out value = "${user.UID}"/></td>
               <td><c:out value = "${user.FNAME}"/></td>
               <td><c:out value = "${user.LNAME}"/></td>
               <td><c:out value = "${user.USERNAME}"/></td>
               <td><c:out value = "${user.EMAIL}"/></td>
               <td><c:out value = "${user.PASSWORD}"/></td>
               <td><c:out value = "${user.CONFIRMPASSWORD}"/></td>
               <td><c:out value = "${user.PHONE}"/></td>
               <td><c:out value = "${user.NIC}"/></td>
               <td><c:out value = "${user.BDATE}"/></td>
               <td><c:out value = "${user.COUNTRY}"/></td>
               <td><c:out value = "${user.CCODE}"/></td>
               
            </tr>
         </c:forEach>
      </table>


</body>
</html>