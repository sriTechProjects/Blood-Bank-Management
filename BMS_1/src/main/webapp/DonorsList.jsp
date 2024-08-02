<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="Donors_List.Donors_List" %>
<%@ page import="Donors_List.Donors_List.Donor" %> <!-- Import the Donor class -->

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Donor List</title>
    <link rel="stylesheet" type="text/css" href="bbms.css">
    <style>
         body {
            font-family: cursive;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh; /* Ensure full viewport height */
            margin: 0;
        }
        .header-section {
            width: 100%;
        }
        h1 {
            text-align: center;
            color: #ff0000; /* red */
            padding-bottom: 2rem;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            border: 2px solid #ff0000; /* red border */
            margin-bottom: 20px;
        }
        th, td {
            border: 1px solid #ff0000; /* red border */
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #ff0000; /* red background */
            color: #ffffff; /* white text */
        }
        tr:nth-child(even) {
            background-color: #f2f2f2; /* light gray background for even rows */
        }
        tr:hover {
            background-color: #ffcdd2; /* light red background on hover */
        }
    </style>
</head>
<body>
	
	<section class="header-section">
        <header class="header-container">
            <div class="nav-bar">

                <!-- Navbar logo box -->
                <div class="logo-box">
                    <a href="index.html" class="logo">
                        <img src="blood_bank_logo.jpeg" alt="Blood Bank" class="logo-icon">
                        <span class="logo-text">Blood Bank</span>
                    </a>
                </div>

                <!-- Section navbar items -->
                <ul class="nav-links">
                    <li class="nav-items"><a href="aboutUs.jsp" class="nav-item-links">About Us</a></li>
                    <li class="nav-items"><a href="blood-group.html" class="nav-item-links">Our Donors</a></li>
                    <li class="nav-items"><a href="blood_products.html" class="nav-item-links">Blood Products</a></li>
                </ul>

                <!-- Section button -->
                <a href="request_blood.html" class="header-btn">Request Blood</a>

            </div>
        </header>
    </section>
	
	
    <h1>Donor List</h1>
    <%
        // Get the blood group from the request
        String bloodGroup = request.getParameter("bloodGroup");

        // Call the method in Donors_List.java to retrieve the donor list
        Donors_List donorsListServlet = new Donors_List();
        List<Donor> donorList = donorsListServlet.getDonorslist(bloodGroup);

        // Display the donor list
    %>
    <table>
        <thead>
            <tr>
                <th>Username</th>
                <th>Email</th>
                <th>Phone Number</th>
                <th>Blood Type</th>
            </tr>
        </thead>
        <tbody>
            <% 
                if (donorList != null) {
                    for (Donor donor : donorList) { 
            %> 
            <tr>
                <td><%= donor.getName() %></td>
                <td><%= donor.getEmail() %></td>
                <td><%= donor.getPhoneNo() %></td>
                <td><%= donor.getBloodType() %></td>
            </tr>
            <% 
                    }
                }
            %>
        </tbody>
    </table>
</body>
</html>
