package com.mvc.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.mvc.bean.Admin_registrationBean;
import com.mvc.util.DBConnection;
public class Admin_registrationDao 
{
       public String registerAdmin(Admin_registrationBean registerBean)
       {
              String adminname = registerBean.getAdminname();
              String stayname = registerBean.getStayname();
              String password = registerBean.getPassword();
              String city= registerBean.getCity();
              String zip = registerBean.getZip();
              String address1= registerBean.getAddress1();
              String emailid = registerBean.getEmailid();
              String address2 = registerBean.getAddress2();
              String tv = registerBean.getTv();
              String ac = registerBean.getAc();
              String fridge = registerBean.getFridge();
              String state = registerBean.getState();
              String mbl_number = registerBean.getMbl_number();
              
              Connection con = null;
              PreparedStatement preparedStatement = null;
              try
              {
                     con = DBConnection.createConnection();
                     String query = "insert into admin_registration(adminname,emailid,stayname,password,city,zip,state,mbl_number,address1,address2,Refrigerator,TV,AC) values (?,?,?,?,?,?,?,?,?,?,?,?,?)"; //Insert admin details into the table 'USERS'
                     preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
                     preparedStatement.setString(1, adminname);
                     preparedStatement.setString(2, emailid);
                     preparedStatement.setString(3, stayname);
                     preparedStatement.setString(4, password);
                     preparedStatement.setString(5, city);
                     preparedStatement.setString(6, zip);
                     preparedStatement.setString(7, state);
                     preparedStatement.setString(8, mbl_number);
                     preparedStatement.setString(9, address1);
                     preparedStatement.setString(10, address2);
                     preparedStatement.setString(11, fridge);
                     preparedStatement.setString(12, tv);
                     preparedStatement.setString(13, ac);
                     
                     
                     
                     int i= preparedStatement.executeUpdate();
                     if (i!=0)  //Just to ensure data has been inserted into the database
                     return "SUCCESS"; 
              }
              catch(SQLException e)
              {
                     e.printStackTrace();
              }
              return "Oops.. Something went wrong there..!";  // On failure, send a message from here.
       }
}
