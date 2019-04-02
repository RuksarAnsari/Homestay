<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body {
	background-image: url("home_stay2.jpeg");
	background-size: 1400px 700px;
	background-position: center;
}

.wrap {
	background: linear-gradient(skyblue, skyblue);
	background-size: 100%;
	width: 35%;
	font-style: oblique;
	margin-left: 70px;
	margin-right: 780px;
	opacity: 0.8;
	border: 3px solid #696969;
	border-radius: 3%;
	padding: 1px;
	padding-left: 15px;
	font-color: White;
}
</style>
<title>registration form</title>
<link rel="stylesheet" href="mystyle.css">
</head>
<body>
<script>
function validate()
{
	if(!(document.regform.password.value.equals(document.regform.repeatpassword.value)))
	{
		alert("password dont match");
      		return false;	
	}
	
	return true;
}

</script>
	<form action="RegisterServlet" method="post" name="regform"
		onsubmit="return validate()">

		<br>
		<br>
		<br>
		<br>
		<div class="wrap">

			<h1>
				<font style="color: white;"> sign up here . . . . </font>
			</h1>
			<form>
				<font size="4" color="white"><b>
						<table style="width: 100%; color: white; font-style: oblique;">

							Name
							<tr>
								<td><input type="text" name="firstname" placeholder="first name" required
									style="margin-right: 25px; border-style: outset;"></td>
								<td><input type="text" name="lastname" placeholder="last name" required
									style="border-style: outset;"></td>
								<br>
							</tr>

							<tr>
								<td><br>
								<b>Age</b></td>
								<td><br>
								<b>Gender</b></td>
							</tr>


							<tr>
								<td><input type="number" name="age"
									style="width: 20%; border-style: outset;"></td>

								<td><select name ="gender"
									style="margin-right: 25px; border-style: outset;">
										<option value="male">Male</option>
										<option value="female">Female</option>
								</select></td>
							</tr>
							<tr>
								<td><br>
								<b>Contact Number</b> </td>
								<td><br>
								<b>Email-Id</b></td>
							</tr>
							<tr>
								<td><input type="text" name="contactnumber"
									placeholder="Contact Number" required
									style="margin-right: 25px; border-style: outset;"></td>

								<td><input type="email" name ="email" placeholder="email" required
									style="border-style: outset";></td>
							</tr>

							<tr>
								<td><br>
								<b>UserId </b></td>
								<td><br>
								<b>Password</b></td>
							</tr>
							<tr>
								<td><input type="text" name ="userid" placeholder="username" required
									style="border-style: outset";></td>

								<td><input type="password" name="password"
									placeholder="password" required style="border-style: outset";></td>
							</tr>
							<tr>
								<td><br>
								<b>Re-enter-password</b></td>

							</tr>
							<tr>
								<td><input type="password" name="repeatpassword"
									placeholder="password" required style="border-style: outset";></td>
								<td><span id="pass"></span></td>
							</tr>


							</b>


							</font>
						</table> <br>
					<br>
						<center>
							<input type="submit" value="Sign In">
						</center>
			</form>
		</div>
</body>
</html>