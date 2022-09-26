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
	
<div class="wrapper">
	<div class=" Staff registration_form">
		<div class="title">
			Staff Register
		</div>

		<form>
			<div class="form_wrap">
				
					<div class="input_wrap">
						<label for="fname"><center>Full Name</center></label>
						<input type="text" id="fname">
					</div>
					<div class="input_wrap">
						<label for="lname"><center>User Name</center></label>
						<input type="text" id="lname">
					</div>
				
				<div class="input_wrap">
					<label for="email"><center>Email Address</center></label>
					<input type="text" id="email">
				</div>
                <div class="input_wrap">
					<label for="contact_no"><center>Contact No</center></label>
					<input type="text" id="contact_no">
				</div>
			
                <div class="input_wrap">
					<label for="nic_no"><center>NIC NO</center></label>
					<input type="text" id="nic_no">
				</div>
				
           
                <div class="input_wrap">
					<label for="password"><center>Password</center></label>
					<input type="text" id="password">
				</div>
                <div class="input_wrap">
					<label for="confirm_password"><center>Confirm Password</center></label>
					<input type="text" id="confirm_password">
				</div>
				<div>
					
				
						<div  class ="grade-details">
						<div class="category"><center>
							<input type="radio" name="gradeI">Grade I
							
							<input type="radio" name="graddeII">Grade II</center>
						</div>
						</div>
					<br>

				</div>

				<div class="input_wrap">
					<input type="submit" value="Create Account" class="submit_btn">
					<a href="login.html"><center>Already have an account? Sign in</center></a> 
				</div>
			</div>
		</form>
	</div>
</div>

</body>
</html>