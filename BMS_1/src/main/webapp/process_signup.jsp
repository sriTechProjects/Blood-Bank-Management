<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    // Retrieve form data
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String con_password = request.getParameter("con_password");
    String email = request.getParameter("email");
    String bloodType = request.getParameter("blood_type");

    // Check if password and confirmation password match
    if (!password.equals(con_password)) {
        // If passwords don't match, redirect back to signup page with error message
        response.sendRedirect("blood_signup.jsp?error=1");
        return; // Stop further execution
    }

    // JDBC connection parameters
    String url = "jdbc:mysql://localhost:3306/bms";
    String user = "root";
    String pass = "a1b2c3";

    // Database query to check if username already exists
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(url, user, pass);
        PreparedStatement stmt = conn.prepareStatement("SELECT * FROM users WHERE username=?");
        stmt.setString(1, username);
        ResultSet rs = stmt.executeQuery();

        // If user exists, redirect back to signup page with error message
        if (rs.next()) {
            response.sendRedirect("blood_signup.jsp?error=2");
            rs.close();
            stmt.close();
            conn.close();
            return; // Stop further execution
        }

        // If user does not exist, insert new user into the database
        stmt = conn.prepareStatement("INSERT INTO users (username, userpass, email, blood_type) VALUES (?, ?, ?, ?)");
        stmt.setString(1, username);
        stmt.setString(2, password);
        stmt.setString(3, email);
        stmt.setString(4, bloodType);
        stmt.executeUpdate();

        // Redirect to login page with success message
        response.sendRedirect("blood_login.jsp?signup=success");

        // Close database connections
        rs.close();
        stmt.close();
        conn.close();
    } catch (SQLException e) {
        // Redirect to signup page with error message
        response.sendRedirect("blood_signup.jsp?error=3");
    } catch (ClassNotFoundException e) {
        // Handle ClassNotFoundException
        out.println("Exception: " + e.getMessage());
    }
%>
