package oop_train;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/deleteCustomerS")
public class deleteCustomerS extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("uname");
		boolean isTrue;
		
		isTrue = customerDButil.deleteCustomer(name);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("CusProfile.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("u.jsp");
			dis2.forward(request, response);
			
			
		}
		
		
	}

}
