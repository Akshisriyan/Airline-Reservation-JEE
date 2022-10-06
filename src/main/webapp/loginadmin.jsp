<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Login Admin</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
</head>
<body>
    <form action = "admin" method = "POST">
    <header>
      <video src="img/1.mp4" autoplay muted loop></video>
        <div class="card">
        
        
            <h1><center>Admin login</center></h1>
            <div class="form-group">
                <i class="fas fa-user"></i>
                <label for="name"><b>Username</b></label>
                <input type="text" name="Username" required>
            </div>
            <div class="form-group">
                <i class="fas fa-lock"></i>
                <label for="name"><b>Password</b></label>
                <input type="password" name="Password" required>
               
            </div>
            
         
        
            <button class="btn" type="submit">Sign in</button>
            <a href="loginstaff.jsp"><h5>STAFF LOGIN</h5></a>
            <a href="index.jsp"><h6>Back</h6></a>
            <h4><center>Create Your Account...</center> </h4>
             <a href="user.jsp"><h5>USER</h5></a>
            <a href="staff.jsp"><h5>STAFF</h5></a>
        </div>
    </header>
    
</body>
</html>