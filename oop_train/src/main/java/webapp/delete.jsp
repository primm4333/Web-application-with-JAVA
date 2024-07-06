<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Customer</title>
    <link rel="stylesheet" href="CP.css">
</head>
<body>

<header class="header">
        <div class="logo">
            <img src="images/logo1.png" alt="Logo">
        </div>
        <nav class="navigation">
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Portfolio</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>
    </header>

    <div class="body-content">
        
        <div class="signup-container">

	<%
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
	%>

	<h2>Customer Account Delete</h2>

	<form action="delete" method="post">
		
		<div class="form-group">
        <label for="customerName">Customer Name:</label>
		<input type="text" name="name" value="<%= name %>" readonly><br>
		</div>
		
		<div class="form-group">
        <label for="address">Address:</label>
		<input type="text" name="address" value="<%= address %>" readonly><br>
		</div>
        <div class="form-group">
        <label for="mobile">Phone:</label>
		<input type="text" name="phone" value="<%= phone %>" readonly><br>
		</div>
        <div class="form-group">
        <label for="mobile">Email:</label>
		<input type="text" name="email" value="<%= email %>" readonly><br>
		</div>
        <div class="form-group">
        <label for="username">Username:</label>
		<input type="text" name="uname" value="<%= username %>" readonly><br>
		</div>
        
	
	<br><br>
	<input type="submit" name="submit" onclick="showSuccessAlert()"  value="Delete My Account" class="signup-btn">
	
	<script>
        function showSuccessAlert() {
            alert("Successfully deleted!!");
        }
  	  </script>
	</form>
	
	 </div>

    </div>

    <footer class="footer">
        <div class="contact-details">
            <h3>Contact Us</h3>
            <p>Email: info@example.com</p>
            <p>Phone: +123 456 789</p>
        </div>
        <div class="sponsors">
            <h3>Our Sponsors</h3>
            <img src="https://www.freepnglogos.com/uploads/visa-and-mastercard-logo-26.png" alt="Sponsor 1">
            <img src="https://www.freepnglogos.com/uploads/paypal-logo-png-1.png" alt="Sponsor 2">
            <!-- Add more sponsor logos as needed -->
        </div>
    </footer>

</body>
</html>