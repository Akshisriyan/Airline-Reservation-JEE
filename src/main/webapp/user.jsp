<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Registration Form In HTML and CSS</title>
	<link rel="stylesheet" href="user.css">
</head>
<body>
	<video src="img/2.mp4" autoplay muted loop></video>
<div class="wrapper">
	<div class=" User registration_form">
		<div class="title">
			User Register
		</div>

		<form>
		
			<div class="form_wrap">
				<div class="input_grp">
					<div class="input_wrap">
						<label for="fname"><b>First Name</b></label>
						<input type="text" id="fname">
					</div>
					<div class="input_wrap">
						<label for="lname"><b>User Name</b></label>
						<input type="text" id="lname">
					</div>
				</div>
				<div class="input_wrap">
					<label for="email"><b>Email Address</b></label>
					<input type="text" id="email">
				</div>
				<div class="input_wrap">
					<label><b>Contact No</b></label>
					<input type="text" id="contact_no">
				</div>
                <div class="input_grp">
                <div class="input_wrap">
					<label for="nic_no"><b>NIC NO</b></label>
					<input type="text" id="nic_no">
				</div>
				<div class="input_wrap">
					<label for="birthday"><b>Birthday</b></label>
					<input type="text" id="birthday">
				</div>
            </div>
                <div class="input_grp">
				<div class="input_wrap">
					<label for="country"><b>Country</b></label>
					<input type="text" id="country">
				</div>
                <div class="input_wrap">
					<label for="country_code"><b>Country Code</b></label>
					<input type="text" id="country_code">
				</div>
            </div>
                <div class="input_wrap">
					<i class="fas fa-lock"></i>
					<label for="password"><b>Password</b></label>
					<input type="password" id="password">
				</div>
                <div class="input_wrap">
					<label for="confirm_password"><b>Confirm Password</b></label>
					<input type="password" id="confirm_password">
				</div>

				<div class="input_wrap">
					<center><input type="submit" value="Create Account" class="submit_btn"></center><br>
					<a href="login.html"><center><b>Already have an account? Sign in</b></center></a> 
        </div>

				</div>
			</div>
		</form>
	</div>
</div>

</body>
</html>