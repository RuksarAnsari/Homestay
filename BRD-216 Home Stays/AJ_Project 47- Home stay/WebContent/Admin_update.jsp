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



<%@ page import="java.sql.*" %>
<%@ page import="com.mvc.util.DBConnection" %>

<%
try
{
	String adminame=(String)session.getAttribute("uname");
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/homestay","root","root");
	PreparedStatement preparedStatement = null;
	String stayname = request.getParameter("stayname");
    String emailid = request.getParameter("email");
    String password = request.getParameter("password");
    String address1 = request.getParameter("address1");
    String address2 = request.getParameter("address2");
    String city = request.getParameter("city");
    String zip = request.getParameter("zip");
    String mbl_number = request.getParameter("mbl_number");
    String state = request.getParameter("state");
    String tv = request.getParameter("tv");
    String ac = request.getParameter("ac");
    String fridge = request.getParameter("fridge");
   
    
	
	ResultSet resultSet = null;
	String query = "update admin_registration set emailid=?,stayname=? , city=?, state=?, zip=?, mbl_number=?, address1=?, address2=?,TV=?,AC=?,Refrigerator=? where adminname=?"; 
	preparedStatement = con.prepareStatement(query); 
	
    preparedStatement.setString(1, emailid);
    preparedStatement.setString(2, stayname);
    preparedStatement.setString(3, city);
    preparedStatement.setString(4, state);
    preparedStatement.setString(5, zip);
    preparedStatement.setString(6, mbl_number);
    preparedStatement.setString(7, address1);
    preparedStatement.setString(8, address2);
    preparedStatement.setString(9, tv);
    preparedStatement.setString(10, ac);
    preparedStatement.setString(11, fridge);
    preparedStatement.setString(12, adminame);
    
     preparedStatement.executeUpdate();
    
	out.print("The data has been updated");
}
catch(Exception e)
{
	e.printStackTrace();
}



 %>

</body>
</html>