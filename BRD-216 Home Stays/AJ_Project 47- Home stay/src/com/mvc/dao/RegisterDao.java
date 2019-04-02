package com.mvc.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.mvc.bean.RegisterBean;
import com.mvc.util.DBConnection;
public class RegisterDao 
{
	public String registerUser(RegisterBean registerBean)
	{
		
		String firstName = registerBean.getFirstName();
		String lastName = registerBean.getLastName();
		String gender = registerBean.getGender();
		String email = registerBean.getEmail();
		String userId = registerBean.getUserId();
		String password = registerBean.getPassword();
		String repeatPassword = registerBean.getRepeatPassword();
		String contactNumber = registerBean.getContactNumber();
		String age = registerBean.getAge();
		
		System.out.println();
		
		Connection con = null;
		//PreparedStatement preparedStatement = null;
		try
		{
			System.out.println("1");
			con = DBConnection.createConnection();
			System.out.println("2");
			String query = "insert into registration values (?,?,?,?,?,?,?,?)"; //Insert user details Stringo the table 'USERS'
			System.out.println("3");
			PreparedStatement preparedStatement  = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
			System.out.println("4");
			preparedStatement.setString(1, firstName);
			preparedStatement.setString(2, lastName);
			preparedStatement.setString(3, gender);
			preparedStatement.setString(4, email);
			preparedStatement.setString(5, password);
			preparedStatement.setString(6, userId);
			preparedStatement.setString(7, contactNumber);
			preparedStatement.setString(8, age);
			System.out.println("5");
			int i= preparedStatement.executeUpdate();
			if (i!=0)  //Just to ensure data has been inserted into the database
			return "SUCCESS"; 
		}
		catch(SQLException e)
		{
			System.out.println(e);
			e.printStackTrace();
		}
		return "Oops.. Something went wrong there..!";  // On failure, send a message from here.
	}
}