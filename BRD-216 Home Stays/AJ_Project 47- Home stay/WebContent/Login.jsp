<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LoginPage</title>
</head>

<style>
body
{
  background: url("home_stay2.jpeg") no-repeat center center fixed;

 background-size: cover;
  
  background-position: center;

}

</style>

<form action="LoginServlet" method="post" name="login">


<body>
<br><br><br><br><br><br>
<div class="form">

	<font size = "5" color= "white "><b>LogIn here</b> >>>></font>
<br>



  <br>
 <font color="white "><b>Username</b></font>
	<br><input name="username" type="text">
<br>
<br>
<font color="white "><b>Password  </b></font> 
	<br><input type="password" name="password"><a href = "https://www.google.com">  <font color= "yellow" size = "1.5"><br> forget password?</a></font>

<br><br><input type="submit" value="Log In">
<br><br>
  
 <a href="Register.jsp"> 
<font color="darkblue">New Registration  </font></a></div>
</form>
<style>
	.form
		{
		  	background : linear-gradient(skyblue,skyblue);
		    font-style: oblique;
		    margin-left:150px;
		    margin-right:950px;
		    opacity : 0.8;
				    border :  3px solid #696969;
				    border-radius : 5%;	
				    width : 25%;
					padding : 10px;	 
					padding-left : 20px;
		    		
		}
</style>
  
</body>
</html>