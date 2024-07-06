<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="CP.css">

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
            <h2>Create an Account</h2>
            <form action=insert method=post>
                <div class="form-group">
                    <label for="customerName">Customer Name:</label>
                    <input type="text"  name="name" required>
                </div>
                <div class="form-group">
                    <label for="address">Address:</label>
                    <input type="text" name="address" required>
                </div>
                <div class="form-group">
                    <label for="mobile">Phone:</label>
                    <input type="text" name="phone" id="phone" required>
                </div>
                <div class="form-group">
                    <label for="mobile">Email:</label>
                    <input type="text" name="email" required>
                </div>
                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" name="un" required>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" name="pw" required>
                </div>
                <button type="submit" class="signup-btn" >Sign Up</button>
            </form>
        </div>


        


    </div>
    
   <script>
        const mobileInput = document.getElementById('phone');

        mobileInput.addEventListener('input', function () {
            const mobileNumber = mobileInput.value;

            // Regular expression to match only numeric values
            const numericPattern = /^\d+$/;

            if (!numericPattern.test(mobileNumber)) {
                alert('Mobile number must contain only numeric values.');
                mobileInput.value = ''; // Clear the input field
            }
        });
    </script>


    
    
    
    
    

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
        </div>
    </footer>
</body>





</html>
