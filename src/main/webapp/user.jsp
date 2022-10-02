<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Registration Form for user </title>
	<link rel="stylesheet" href="user.css">
	
	
	
</head>
<body>
	<video src="img/2.mp4" autoplay muted loop></video>
<div class="wrapper">
	<div class=" User registration_form">
		<div class="title">
			User Register
		</div>

	      <form action = "user" method = "POST">
		
			<div class="form_wrap">
				<div class="input_grp">
					<div class="input_wrap">
						<label for="fname"><b>First Name</b></label>
						<input type="text" id="fname" name="fname"required>
					</div>
					<div class="input_wrap">
						<label for="lname"><b>Last Name</b></label>
						<input type="text" id="lname" name="lname"required>
					</div>
				</div>
				
				<div class="input_wrap">
					<label for="username"><b>UserName</b></label>
					<input type="text" id="username" name="username"required>
				</div>
				
				<div class="input_wrap">
					<label for="email"><b>Email Address</b></label>
					<input type="text" id="email" name="email"required>
				</div>
				<div class="input_wrap">
					<label><b>Contact No</b></label>
					<input type="text" id="contact_no" name="contact_no"required>
				</div>
                <div class="input_grp">
                <div class="input_wrap">
					<label for="nic_no"><b>NIC NO</b></label>
					<input type="text" id="nic_no" name="nic_no"required>
				</div>
				<div class="input_wrap">
					<label for="birthday"><b>Birthday</b></label>
					<input type="text" id="birthday" name="birthday"required>
				</div>
            </div>
                <div class="input_grp">
				<div class="input_wrap">
					<label for="country"><b>Country</b></label>
					<input type="text" id="country" name="country"required>
				</div>
                <div class="input_wrap">
					<label for="country_code"><b>Country Code</b></label>
					<input type="text" id="country_code" name="country_code"required>
				</div>
            </div>
                <div class="input_wrap">
					<i class="fas fa-lock"></i>
					<label for="password"><b>Password</b></label>
					<input type="password" id="password" name="password"required>
				</div>
                <div class="input_wrap">
					<label for="confirm_password"><b>Confirm Password</b></label>
					<input type="password" id="confirm_password"required>
				</div>

				<div class="input_wrap">
					<center><input type="submit" value="Create Account" href=adminstaff.jsp class="submit_btn"></center><br>
					<a href="login.jsp"><center><b>Already have an account? Sign in</b></center></a> 
        </div>

				</div>
				</form>
			</div>
		
	</div>

</body>
</html>