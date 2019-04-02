<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="stays.css">

<title>Results</title>
</head>


<body>

<form action="book.jsp">
<button class=logout>Logout</button>
</form>

<%@ page import="java.sql.*" %>
<%@ page import="com.mvc.util.DBConnection" %>

<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/homestay","root","root");
	PreparedStatement preparedStatement = null;
	String DBcity = request.getParameter("city");
	String DBarea = request.getParameter("area");
	
	ResultSet resultSet = null;
	String query = "select stayname, city, zip, mbl_number, address1, address2 from admin_registration where city=? and address2=?"; 
	preparedStatement = con.prepareStatement(query); 
	
    preparedStatement.setString(1, DBcity);
    preparedStatement.setString(2, DBarea);
    
    resultSet = preparedStatement.executeQuery();
    out.print("<table id=gh align=center>");
    out.print("<tr class=head>");
	out.print("<td>" + "StayName" + "</td>");
	out.print("<td>" + "City" + "</td>");
	out.print("<td>" + "Zip" + "</td>");
	out.print("<td>" + "Contact Number" + "</td>");
	out.print("<td>" + "Address" + "</td>");
	out.print("<td>" + "Area" + "</td>");
	out.print("</tr>");
	
	while(resultSet.next()) 
	{
		String staynameDB = resultSet.getString("stayname"); 
		String cityDB = resultSet.getString("city");
		String zipDB = resultSet.getString("zip"); 
		String mbl_numberDB = resultSet.getString("mbl_number");
		String address1DB = resultSet.getString("address1"); 
		String address2DB = resultSet.getString("address2");
	
		
		out.print("<tr id=tail>");
		out.print("<td>" + staynameDB + "</td>");
		out.print("<td>" + cityDB + "</td>");
		out.print("<td>" + zipDB + "</td>");
		out.print("<td>" + mbl_numberDB + "</td>");
		out.print("<td>" + address1DB + "</td>");
		out.print("<td> " + address2DB + " <a href = book.jsp ><b>Book now </b></a>" + "</td>");
		out.print("<td>");
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