<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blood Bank Management System</title>
    <style>
        body {
            background-color: #ffffff;
            color: #ff0000;
        	font-family: cursive;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-decoration: none;
        }
        
        .container{
        	display: flex;
        	flex-direction: column;
        	align-items: center;
        	justify-content: center;
        }
        
        .container h2{
        	font-size: 3rem;
        	display: flex;
        	flex-direction: column;
        	align-items: center;
        	justify-content: center;
        }


        form {
            background-color: #ffffff;
            border: 2px solid #ff0000;
            border-radius: 10px;
            height: 20rem;
            width: 50rem;
            box-shadow: 0px 0px 10px #888888;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            margin: 4rem;
            
        }
		.userType{
			font-size: 25px;	
		}
		
		.user-type{
			display: flex;
            align-items: center;
            justify-content: center;
			gap: 10rem;
		}
		
		.btn button{
			text-decoration: none;
			color: #fff;
			font-size: 1.5rem;
		}
		
		.btn button{
			display: flex;
			flex-direction: column;
			justify-content: center;
			align-items: center;
			background-color: #ff0000;
			color: #fff;
			width: 9rem;
			height: 3rem;
			border-radius: 10px;
			transition: 0.3s ease;
		}
		
		.btn button:hover{
			transform: scale(1.1);
			background-color: #b30000;
		}
		
		
		
		
    </style>
</head>
<body>

<div class="container">
	<h2>Welcome to Blood Bank Management System</h2>

<form action="Choose_user" method="post">
    <div class="userType">Khoon Dena hain yaa Lena hain??</div><br>
    <div class="user-type">
        <div class="btn">
            <button name="userType" value="Donor">
                Donor
            </button>
        </div>
        <div class="btn">
            <button name="userType" value="Receiver">
                Receiver
            </button>
        </div>
    </div>
</form>
</div>
</body>
</html>
