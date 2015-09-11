package edu.nku.csc456.profile;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class ProfileServlet extends HttpServlet {

	public void doPost(HttpServletRequest request,
			HttpServletResponse response)
			throws IOException {
		

		PrintWriter out = response.getWriter();
		String firstName = request.getParameter("first_name");
		String lastName = request.getParameter("last_name");
		String email = request.getParameter("email");
		String color = request.getParameter("color");
		String food = request.getParameter("food");
		String courses = request.getParameter("course");
		String weather = request.getParameter("weather");

		out.println("<html> " +
			    "<body>"+
				"<img src=http://www.gravatar.com/avatar/>" +
			    "<h1 align=center>Hello!  " + firstName + "  " + lastName + "</h1>" +
			   "<h2 align=center> The Email Registered: </h2> <p align=center>" + email +
				"</p><h2 align=center> Your Favorite Color: </h2> <p align=center>" + color + 
				"</p> <h2 align=center> Your number of Courses: </h2> <p align=center>" + courses +
				"</p> <h2 align=center> Your Favorite Weather: </h2> <p align=center>" + weather +
				"</p> <h2 align=center> Your Favorite Foods: </h2> <p align=center>" + food +
			   "</p></body></html>");
	}

}