<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="Donation_center.DatabaseUtils" %>
<%@ page import="Donation_center.DatabaseUtils.DonationCenters" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Donation Centers</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<style>
	body {
    font-family: cursive;
    background-color: #B30000; /* Red background color */
    color: white; /* White text color */
    margin: 0;
    padding: 0;
}

.container {
	display: flex;
	flex-direction: column;
    width: 80%;
    margin: 0 auto;
    padding: 1rem;
}

h2 {
    text-align: center;
    background-color: #fff;
    color: #b30000;
}

.row {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    padding-top: 3rem;
}

.center {
    width: 23%; /* Adjust width for four centers in a row */
    background-color: white; /* White background color for center div */
    color: #FC6736; /* Red text color */
    padding: 15px;
    margin-bottom: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.center p {
    margin: 5px 0;
}
	
</style>
<body>
    <div class="container">
        <h2>Donation Centers</h2>

        <% 
            // Call the method to get donation centers from the database
            DatabaseUtils dbUtils = new DatabaseUtils();
            List<DonationCenters> donationCenters = dbUtils.getDonationCenters();

            // Counter to keep track of center cards in each row
            int centerCount = 0;

            // Loop through the list and display donation centers
            for (DonationCenters center : donationCenters) {
                // If it's the first center in the row, open a new row div
                if (centerCount % 3 == 0) {
        %>
        <div class="row">
        <% } %>
            <div class="center">
                <p><strong>Center ID:</strong> <%= center.getCenterId() %></p>
                <p><strong>Center Name:</strong> <%= center.getCenterName() %></p>
                <p><strong>Address:</strong> <%= center.getAddress() %></p>
                <p><strong>Contact:</strong> <%= center.getCenterContact() %></p>
                <p><strong>Operating Hours:</strong> <%= center.getOperatingHours() %></p>
            </div>
        <% 
                // Increment the center count
                centerCount++;

                // If it's the fourth center in the row or the last center, close the row div
                if (centerCount % 3 == 0 || centerCount == donationCenters.size()) {
        %>
        </div>
        <% } 
            } 
        %>
    </div>
</body>
</html>
