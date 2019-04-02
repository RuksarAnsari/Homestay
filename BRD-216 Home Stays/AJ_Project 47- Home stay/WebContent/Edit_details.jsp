<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Registration</title>
</head>
<body>
	<h1>
		<marquee>Update Details Of Your Stays</marquee>
	</h1>
	<div class="reg">

		<form name="adminform" onsubmit="return validate()" id="reg"
			 action="Admin_update.jsp">

			<h2>Update here</h2>
			<label>Home stay name:<span style="color:red">*</span></label><br> 
				<input type="text"name="stayname" placeholder="homestay" id="stayname" required><br><br>
				
				 
				<label>Addressline1:<span style="color:red">*</span></label><br> <input type="text" name="address1"
				placeholder="Adress" id="address1" required><br> <br> 
				<label>Addressline2:</label><br> <input type="text" name="address2"
				placeholder="Adress" id="address2" required><br> <br> 
				<label>City:<span style="color:red">*</span></label><br>
			<input type="text" name="city" placeholder="city" id="city" required><br><br> 
			<label>zip:<span style="color:red">*</span></label><br> 
			<input type="number" name="zip"placeholder="zip" id="zip"><span id="zip1"></span>
				 <br><br>
		<label>State:<span style="color:red">*</span></label><br> <select name="state">
				<option>select</option>
				<option>andhra pradesh</option>
				<option>uttar pradesh</option>
				<option>madhya pradesh</option>
				<option>maharashtra</option>
				<option>Gujrat</option>
				<option>Goa</option>
			</select><br> <br> 
			<label>Mail id:<span style="color:red">*</span></label><br> 
			<input type="email" name="email" placeholder="emailid" id="emailid"><br>
			<br>
			<table>
				<tr>
					<td><label>Contact number:<span style="color:red">*</span></label></td>
					<td><select>
							<option>+91</option>
							<option>+92</option>
							<option>+93</option>
					</select></td>
				</tr>
			</table>
			<input type="text" name="mbl_number" placeholder="Mobile NO."
				id="mbl_number"><span id="messages"></span> <br> <br>
			<label>facility<span style="color:red">*</span></label><br>
			<div class="multiselect">
				<ul>
					<li><input type="checkbox" value="1" checked name="ac">AC</li>
					<li><input type="checkbox" value="1" name="tv">TV</li>
					<li><input type="checkbox" value="1" name="fridge">Refrigerator</li>
				</ul>
			</div>
			<br> <br> <label>file upload</label><br> <input
				type="file" name="user_file" id="filename"><br> <br>
			<button type="submit" id="sub">Update</button>
			<button type="reset" id="sub">reset</button>
			<script>
				function validate() {
					
					var a = document.adminform.mbl_number.value;
					var c = document.adminform.password.value;
					var b = document.adminform.zip.value;
					var d = document.adminform.conpassword.value;
					
					if (b == "") {
						document.getElementById("zip1").innerHTML = "**Please fill zip";
						return false;
					}
					if (b.length < 6) {
						document.getElementById("zip1").innerHTML = "**zip must be of 6 digits";
						return false;
					}
					if (b.length > 6) {
						document.getElementById("zip1").innerHTML = "**zip must be of 6 digits";
						return false;
					}
					
					
					if (a == "") {
						document.getElementById("messages").innerHTML = "**Please fill mobile number";
						return false;
					}
					if (isNaN(a)) {
						document.getElementById("messages").innerHTML = "**enter only numeric number";
						return false;
					}
					if (a.length < 10) {
						document.getElementById("messages").innerHTML = "**mobile number must be 10 digit";
						return false;
					}
					if (a.length > 10) {
						document.getElementById("messages").innerHTML = "**mobile number must less than 10 digit";
						return false;
					}
					if ((a.charAt(0) != 9) && (a.charAt(0) != 8)
							&& (a.charAt(0) != 7)) {
						document.getElementById("messages").innerHTML = "**mobile number must start with 9,8,7";
						return false;
					}
					
					
					
					if (c == "") {
						document.getElementById("pwd").innerHTML = "**Please fill password";
						return false;
					}
					if (c.length < 6) {
						document.getElementById("pwd").innerHTML = "**password must be of atleast 6 digits";
						return false;
					}
					if (c.length > 10) {
						document.getElementById("pwd").innerHTML = "**password must less than 10 digits";
						return false;
					}
					
					if (c!=d) {
						document.getElementById("conpwd").innerHTML = "**password does not match";
						return false;
					}

					return true;

				}
			</script>
		</form>
	</div>
</body>
<style>
@CHARSET "ISO-8859-1";

* {
	margin: 0;
	padding: 0;
}

body {
	background-image: url(project.jpg);
	backround-repeat: no-repeat;
	background-size: cover;
}

h1 {
	color: red;
	text-align: center;
	font-style: italic;
	padding: 20px;
}

label {
	color: red;
	font-size: 20px;
	font-style: italic;
}

#emailid {
	width: 300px;
	outline: 0;
	padding: 5px;
	border: 3px groove;
}

#password {
	width: 300px;
	outline: 0;
	padding: 5px;
	border: 3px groove;
}

#conpassword {
	width: 300px;
	outline: 0;
	padding: 5px;
	border: 3px groove;
}

#adminname {
	width: 300px;
	outline: 0;
	padding: 5px;
	border: 3px groove;
}

#facility {
	width: 300px;
	outline: 0;
	padding: 5px;
	border: 3px groove;
}

#address2 {
	width: 300px;
	outline: 0;
	padding: 5px;
	border: 3px groove;
}

#address1 {
	width: 300px;
	outline: 0;
	padding: 5px;
	border: 3px groove;
}

#state {
	width: 300px;
	outline: 0;
	padding: 5px;
	border: 3px groove;
}

#zip {
	width: 300px;
	outline: 0;
	padding: 5px;
	border: 3px groove;
}

#city {
	width: 300px;
	outline: 0;
	padding: 5px;
	border: 3px groove;
}

#stayname {
	width: 300px;
	outline: 0;
	padding: 5px;
	border: 3px groove;
}

#mbl_number {
	width: 300px;
	outline: 0;
	padding: 5px;
	border: 3px groove;
}

.reg {
	width: 40%;
	margin: auto;
	background-color: rgb(0, 0, 0, 0.4);
}

#sub {
	width: 120px;
	outline: 0;
	padding: 5px;
	border: 3px groove;
	color: white;
	font-size: 18px;
	font style: italic;
	background-color: darkgreen;
}
</style>
</html>
