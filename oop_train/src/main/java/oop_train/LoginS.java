package oop_train;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginS")
public class LoginS extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password =request.getParameter("password");
		
		boolean isTrue;
		
		isTrue = customerDButil.validate(username, password);
		
		
		if(isTrue == true) {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("home.jsp");
			dis2.forward(request, response);
			
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("u.jsp");
			dis2.forward(request, response);
			
		}
		
	}

}
