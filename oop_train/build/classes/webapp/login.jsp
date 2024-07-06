<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="login.css">

</head>

<body>
    <header class="header">
        <div class="logo">
            <img src="images/logo1.png" alt="Logo">
        </div>
        <nav class="navigation">
            <ul>
                <li><a href="#">About</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>
    </header>

    <div class="body-content">
        

        <div class="login-container">
            <h2>Login</h2>
            <form action="login" method="post">
                <input class="login-input" type="text" placeholder="Username" name="username" required><br>
                <input class="login-input" type="password" placeholder="Password" name="password" required><br>
                <button type="submit" class="login-btn">Login</button>
            </form>

            <div class="login-footer">
                <p>Don't have an account? <a href="CusProfile.jsp">Sign Up</a></p>
            </div>

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
