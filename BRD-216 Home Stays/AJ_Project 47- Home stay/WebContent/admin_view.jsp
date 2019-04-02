<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="admin_view.css">
<title>Your Stays</title>
</head>
<body>
<form action="/HomeStayPro/Newhome.jsp">
<button class=logout>Logout</button>
</form>

<form action="/HomeStayPro/Edit_details.jsp">
<button class=logout>Edit</button>
</form>


<%@ page import="java.sql.*" %>
<%@ page import="com.mvc.util.DBConnection" %>
<%@ page import="com.mvc.bean.*" %>
<%@ page import="com.mvc.controller.*" %>
<%@ page import="com.mvc.dao.*" %>

<%

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/homestay","root","root");
	PreparedStatement preparedStatement = null;
	String DBusername = request.getParameter("username");
	String DBpassword = request.getParameter("password");
	
	session.setAttribute("uname",DBusername);
	
	
	//Admin_UpdateBean b = new Admin_UpdateBean();
	//b.setAdminname(DBusername);
	
	
	
	ResultSet resultSet = null;
	String query = "select emailid,stayname, city, state, zip, mbl_number, address1, address2 from admin_registration where adminname=? and password=?"; 
	preparedStatement = con.prepareStatement(query); 
	
    preparedStatement.setString(1, DBusername);
    preparedStatement.setString(2, DBpassword);
    
    resultSet = preparedStatement.executeQuery();
    out.print("<table align=center id=gh>");
    out.print("<tr>");
	out.print("<td>" + "Stay Name" + "</td>");
	out.print("<td>" + "Address" + "</td>");
	out.print("<td>" + "Area" + "</td>");
	out.print("<td>" + "City" + "</td>");
	out.print("<td>" + "State" + "</td>");
	out.print("<td>" + "Zip" + "</td>");
	out.print("<td>" + "Contact Number" + "</td>");
	out.print("<td>" + "Email ID" + "</td>");
	out.print("</tr>");
	while(resultSet.next()) 
	{
		String emailidDB = resultSet.getString("emailid");
		String staynameDB = resultSet.getString("stayname"); 
		String cityDB = resultSet.getString("city");
		String stateDB = resultSet.getString("state");
		String zipDB = resultSet.getString("zip"); 
		String mbl_numberDB = resultSet.getString("mbl_number");
		String address1DB = resultSet.getString("address1"); 
		String address2DB = resultSet.getString("address2");
	
		
		out.print("<tr>");
		out.print("<td>" + staynameDB + "</td>");
		out.print("<td>" + address1DB + "</td>");
		out.print("<td>" + address2DB + "</td>");
		out.print("<td>" + cityDB + "</td>");
		out.print("<td>" + stateDB + "</td>");
		out.print("<td>" + zipDB + "</td>");
		out.print("<td>" + mbl_numberDB + "</td>");
		out.print("<td>" + emailidDB + "</td>");
		out.print("</tr>");
		
	}
	
	out.print("</table>");
}
catch(Exception e)
{
	e.printStackTrace();
}




 %>

</body>
</html>