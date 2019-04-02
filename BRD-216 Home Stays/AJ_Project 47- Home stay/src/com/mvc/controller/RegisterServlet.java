package com.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.mvc.bean.RegisterBean;
import com.mvc.dao.RegisterDao;

public class RegisterServlet extends HttpServlet {
	public RegisterServlet() {
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String firstName = request.getParameter("firstname");
		String lastName = request.getParameter("lastname");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String userId = request.getParameter("userid");
		String password = request.getParameter("password");
		String repeatPassword = request.getParameter("repeatpassword");
		String contactNumber = request.getParameter("contactnumber");
		String age = request.getParameter("age");

		RegisterBean registerBean = new RegisterBean();

		registerBean.setFirstName(firstName);
		registerBean.setLastName(lastName);
		registerBean.setGender(gender);
		registerBean.setEmail(email);
		registerBean.setUserId(userId);
		registerBean.setPassword(password);
		registerBean.setRepeatPassword(repeatPassword);
		registerBean.setContactNumber(contactNumber);
		registerBean.setAge(age);

		RegisterDao registerDao = new RegisterDao();

		String userRegistered = registerDao.registerUser(registerBean);
		if (userRegistered.equals("SUCCESS")) // On success, you can display a
												// message to user on Home page
		{
			request.getRequestDispatcher("/requirements.jsp")
					.forward(request, response);
		} else {
			request.setAttribute("errMessage", userRegistered);
			request.getRequestDispatcher("/Register.jsp").include(request,
					response);
		}
	}
}