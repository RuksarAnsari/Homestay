package com.mvc.controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.mvc.bean.Admin_registrationBean;
import com.mvc.dao.Admin_registrationDao;
public class Admin_registrationServlet extends HttpServlet 
{
       public Admin_registrationServlet() 
       {
       }
       
       protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
       {
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
              String adminname = request.getParameter("adminname");
              
              Admin_registrationBean registerBean = new Admin_registrationBean();
       
              registerBean.setAdminname(adminname);
              registerBean.setEmailid(emailid);
              registerBean.setCity(city);
              registerBean.setTv(tv);
              registerBean.setAc(ac);
              registerBean.setFridge(fridge);
              registerBean.setMbl_number(mbl_number);
              registerBean.setAddress1(address1);
              registerBean.setAddress2(address2);
              registerBean.setZip(zip);
              registerBean.setState(state);
              registerBean.setStayname(stayname);
              registerBean.setPassword(password);
              
              
              Admin_registrationDao registerDao = new Admin_registrationDao ();
              
              String adminRegistered = registerDao.registerAdmin(registerBean);
              if(adminRegistered.equals("SUCCESS"))   //On success, you can display a message to admin on Home page
              {
                     request.getRequestDispatcher("/Home.jsp").forward(request, response);
              }
              else   
              {
                     request.setAttribute("errMessage", adminRegistered);
                     request.getRequestDispatcher("/Admin_registration.jsp").include(request, response);
              }
       }
}
