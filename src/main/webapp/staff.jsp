<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Registration Form In HTML and CSS</title>
	<link rel="stylesheet" href="staff.css">
</head>
<body>
	<video src="img/5.mp4" autoplay muted loop></video>	
<div class="wrapper">
	<div class=" Staff registration_form">
		<div class="title">
			Staff Registers
		</div>

		<form action = "grade1" method = "POST">
		
			<div class="form_wrap">
				
					
					<div class="input_wrap">
						<label for="lname"><center><b>User Name</b></center></label>
						<input type="text" id="lname" name = "lname" required>
					</div>
				
				<div class="input_wrap">
					<label for="email"><center><b>Email Address</b></center></label>
					<input type="text" id="email"  name = "email"required>
				</div>
                <div class="input_wrap">
					<label for="contact_no"><center><b>Contact No</b></center></label>
					<input type="text" id="contact_no"  name = "contact_no"required>
				</div>
			
                <div class="input_wrap">
					<label for="nic_no"><center><b>NIC NO</b></center></label>
					<input type="text" id="nic_no"  name = "nic_no"required>
				</div>
				
           
                <div class="input_wrap">
					<label for="password"><center><b>Password</b></center></label>
					<input type="password" id="password"  name = "password"required>
				</div>
                <div class="input_wrap">
					<label for="confirm_password"><center><b>Confirm Password</b></center></label>
					<input type="password" id="confirm_password"  name = "confirm_password"required>
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

				<div class="input_wrap">
					<center><input type="submit" value="Create Account" class="submit_btn"></center><br>
					<a href="login.jsp"><center><b>Already have an account? Sign in</b></center></a> 
				</div>
				
        

			</div>
		</form>
	</div>
</div>

</body>
</html>