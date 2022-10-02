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
            <th>Grade1 Id</th>
            <th>User Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>NIC</th>
            <th>Grade</th>
           
         
            
         </tr>
         
         <c:forEach var = "stf1" items = "${grade1Info}">
            <tr>
               <td><c:out value = "${stf1.SID}"/></td>
               <td><c:out value = "${stf1.USERNAME}"/></td>
               <td><c:out value = "${stf1.EMAIL}"/></td>
               <td><c:out value = "${stf1.PHONE}"/></td>
               <td><c:out value = "${stf1.NIC}"/></td>
               <td><c:out value = "${stf1.GRADE}"/></td>
              
               
            </tr>
         </c:forEach>
      </table>


</body>
</html>