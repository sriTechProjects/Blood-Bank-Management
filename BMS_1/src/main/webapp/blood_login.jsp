<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blood Login</title>
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
        input[type="text"], input[type="password"], input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #b30000; /* red border */
            border-radius: 5px;
            box-sizing: border-box;
        }
		
		 input[type="text"], input[type="password"], input[type="submit"]::focus{
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 2px solid #fff; /* red border */
            border-radius: 5px;
            box-sizing: border-box;
            outline: #b30000;
        }
		        
        input[type="submit"] {
        	font-size: 1rem;
            background-color: #ff0000; /* red submit button */
            color: #ffffff; /* white text color */
            cursor: pointer;
            transition: 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #cc0000; /* darker red on hover */
        }
        .signup-btn {
            margin-top: 10px;
            display: block;
            text-decoration: none;
            color: #ff0000; /* red text color */
            border: 1px solid #ff0000; /* red border */
            border-radius: 5px;
            padding: 10px;
            transition: 0.3s ease; 
            background-color: #ffffff; /* white background */
        }
        .signup-btn:hover {
            background-color: #ff0000; /* red background on hover */
            color: #ffffff; /* white text color on hover */
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Login for Saving more Lives</h2>
    <form action="process_login.jsp" method="post">
        <% String userType = (String) request.getAttribute("userType"); %>
        <label for="username">Username:</label><br>
        <input type="text" id="username" name="username" required><br>
        <label for="password">Password:</label><br>
        <input type="password" id="password" name="password" required><br>
        <input type="hidden" name="userType" value="<%=userType%>"> <!-- Add this line -->
        <input type="submit" value="Login">
    </form>
    <a href="blood_signup.jsp" class="signup-btn">New <%=userType%>? Sign Up</a>
</div>

</body>
</html>
