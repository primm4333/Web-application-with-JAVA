<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Profile</title>
    <link rel="stylesheet" href="ua.css">

</head>

<body>
    <header class="header">
        <div class="logo">
            <img src="images/logo1.png" alt="Logo">
        </div>
        <nav class="navigation">
            <ul>
                <li><a href="home.jsp">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Inquiry</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>
    </header>

    <div class="body-content">
        
        <div class="signup-container">
            <h2>Customer Profile</h2>

                <table >
	                <c:forEach var="cus" items="${cusdetail}">
	                
					<c:set var="name" value="${cus.name}"/>
					<c:set var="address" value="${cus.address}"/>
					<c:set var="phone" value="${cus.phone}"/>
					<c:set var="email" value="${cus.email}"/>
					<c:set var="username" value="${cus.username}"/>
					<c:set var="password" value="${cus.password}"/>
	                
	                <tr>
	                    <td>Customer Name</td>
	                    <td>${cus.name}</td>
	                </tr>
	                <tr>
	                    <td>Customer Address</td>
	                    <td>${cus.address}</td>
	                </tr>
	                <tr>
	                    <td>Customer Phone</td>
	                    <td>${cus.phone}</td>
	                </tr>
	                <tr>
	                    <td>Customer Email</td>
	                    <td>${cus.email}</td>
	                </tr>
	                <tr>
	                    <td>Customer User name</td>
	                    <td>${cus.username}</td>
	                </tr>
	                <tr>
	                    <td>Customer Password</td>
	                    <td>${cus.password}</td>
	                </tr>
	            
	                </c:forEach>
                </table>
                
                
                <c:url value="updatec.jsp" var="cusupdate">
					<c:param name="name" value="${name}"/>
					<c:param name="address" value="${address}"/>
					<c:param name="phone" value="${phone}"/>
					<c:param name="email" value="${email}"/>
					<c:param name="uname" value="${username}"/>
					<c:param name="pass" value="${password}"/>
				</c:url>
                
                <br><br>
                <a href="${cusupdate}">
                <input type="submit" name="update" value="Update" class="signup-btn" >
                </a>
                
                
                
                <c:url value="delete.jsp" var="cusdelete">
					<c:param name="name" value="${name}" />
					<c:param name="address" value="${address}" />
					<c:param name="phone" value="${phone}" />
					<c:param name="email" value="${email}" />
					<c:param name="uname" value="${username}" />
					<c:param name="pass" value="${password}" />
					
					
				</c:url>
				
				<br><br>
				<a href="${cusdelete}">
				<input type="button" name="delete" value="Delete" class="signup-btn">
				</a>
                
                
                

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
