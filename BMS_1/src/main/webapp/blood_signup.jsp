<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blood Signup</title>
    <style>
        body {
            background-color: #ffffff; /* white background */
            color: #ff0000; /* red text color */
            font-family: Arial, sans-serif;
        }
        .container {
            margin: 0 auto;
            padding: 20px;
            max-width: 400px;
            text-align: center;
            border: 2px solid #ff0000; /* red border */
            border-radius: 10px;
            box-shadow: 0px 0px 10px #888888; /* shadow */
        }
        input[type="text"], input[type="password"], input[type="email"], select, input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ff0000; /* red border */
            border-radius: 5px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: red; /* red submit button */
            color: #ffffff; /* white text color */
            cursor: pointer;
            transition: 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #b30000; /* darker red on hover */
        }
        .signup-btn {
            margin-top: 10px;
            display: block;
            text-decoration: none;
            color: #ff0000; /* red text color */
            border: 1px solid #ff0000; /* red border */
            border-radius: 5px;
            padding: 10px;
            background-color: #ffffff; 
            transition: 0.3s ease;
        }
        .signup-btn:hover {
            background-color: #ff0000; /* red background on hover */
            color: #ffffff; /* white text color on hover */
        }
        .error-message {
            color: red;
            margin-top: 10px;
        }
        .password-container {
            position: relative;
            display: flex;
            align-items: center;
        }
        .password-container input[type="password"] {
            flex: 1;
        }
        .password-container .toggle-password {
            position: absolute;
            right: 10px;
            cursor: pointer;
        }
    </style>
    <script>
        function togglePasswordVisibility() {
            const passwordField = document.getElementById('con_password');
            const eyeIcon = document.getElementById('eye-icon');
            if (passwordField.type === 'password') {
                passwordField.type = 'text';
                eyeIcon.textContent = '🙈';
            } else {
                passwordField.type = 'password';
                eyeIcon.textContent = '👁️';
            }
        }
    </script>
</head>
<body>

<div class="container">
    <h2>Sign Up for Saving Your Own Life</h2>
    <form action="process_signup.jsp" method="post">
        <label for="username">Username:</label><br>
        <input type="text" id="username" name="username" required><br>
        <label for="password">Password:</label><br>
        <input type="password" id="password" name="password" required><br>
        <label for="con_password">Confirm Password:</label><br>
        <div class="password-container">
            <input type="password" id="con_password" name="con_password" required>
            <span id="eye-icon" class="toggle-password" onclick="togglePasswordVisibility()">👁️</span>
        </div><br>
        <label for="email">Enter your EmailID: </label>
        <input type="email" id="email" name="email" required><br>
        <label for="blood_type">Enter your Blood Group: </label>
        <select id="blood_type" name="blood_type" required>
            <option value="">Select your Blood Group</option>
            <option value="A+">A+</option>
            <option value="A-">A-</option>
            <option value="B+">B+</option>
            <option value="B-">B-</option>
            <option value="AB+">AB+</option>
            <option value="AB-">AB-</option>
            <option value="O+">O+</option>
            <option value="O-">O-</option>
        </select><br>
        <input type="submit" value="Register">
    </form>
    <a href="blood_login.jsp" class="signup-btn">Already received Blood? Sign In</a>
</div>

</body>
</html>
