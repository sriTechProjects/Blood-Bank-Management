<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    // Retrieve form data
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String userType = request.getParameter("userType");

    // JDBC connection parameters
    String url = "jdbc:mysql://localhost:3306/bms";
    String user = "root";
    String pass = "a1b2c3";

    // Database query
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(url, user, pass);
        PreparedStatement stmt = conn.prepareStatement("SELECT * FROM users WHERE username=? AND userpass=?");
        stmt.setString(1, username);
        stmt.setString(2, password);
        ResultSet rs = stmt.executeQuery();

        // If user exists, redirect to dashboard
        if (rs.next()) {
            session.setAttribute("username", username);
            if ("Receiver".equals(userType)) {
                response.sendRedirect("receiver_index.jsp");
            } else if ("Donor".equals(userType)) {
                response.sendRedirect("index.html");
            }
        } else {
            // If user does not exist, redirect back to login page with error message
            response.sendRedirect("blood_login.jsp?error=1");
        }

        // Close database connections
        rs.close();
        stmt.close();
        conn.close();
    } catch (Exception e) {
        out.println("Exception: " + e.getMessage());
    }
%>
