<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <title>Login Staff</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
</head>
<body>
    <form action = "staff" method = "POST">
    <header>
      <video src="img/1.mp4" autoplay muted loop></video>
        <div class="card">
        
        
            <h1><center>login Staff</center></h1>
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
             <div class="form-group">
                <i class="fas fa-lock"></i>
                <label for="name"><b>Confirm Password</b></label>
                <input type="password" name="ConfirmPassword" required>
               
            </div>
            
            	<div>				
			      <div  class ="grade-details">
		          <div class="category"><center>
							<input type="radio" name="grade" value="Grade 1"required>Grade I

                            <input type="radio" name="grade" value="Grade 2"required>Grade II</center>
						</div>
						</div>
					<br>
				</div> 
         
         
        
            <button class="btn" type="submit">Sign in</button>
            <a href="login.jsp"><h6>Forget Password ?</h6></a>
            <h4><center>Create Your Account...</center> </h4>
             <a href="user.jsp"><h5>User Register</h5></a>
            <a href="staff.jsp"><h5>Staff Register</h5></a>
        </div>
    </header>
    
</body>
</html>