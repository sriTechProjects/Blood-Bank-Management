package Donors_List;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Donors_List {
    private String url = "jdbc:mysql://localhost:3306/bms";
    private String username = "root";
    private String password = "a1b2c3";

    // Inner class for setting and getting
    public class Donor {
        private String email;
        private String name;
        private String phone_no;
        private String blood_type;

        public Donor(String email, String name, String phone_no, String blood_type) {
            this.email = email;
            this.name = name;
            this.phone_no = phone_no;
            this.blood_type = blood_type;
        }

        // Getters
        public String getEmail() {
            return email;
        }

        public String getName() {
            return name;
        }

        public String getPhoneNo() {
            return phone_no;
        }

        public String getBloodType() {
            return blood_type;
        }

        // Setters
        public void setEmail(String email) {
            this.email = email;
        }

        public void setName(String name) {
            this.name = name;
        }

        public void setPhoneNo(String phone_no) {
            this.phone_no = phone_no;
        }

        public void setBloodType(String blood_type) {
            this.blood_type = blood_type;
        }
    }

    public List<Donor> getDonorslist(String bloodGroup) {
        List<Donor> donorList = new ArrayList<>();

        try {
            Connection conn = DriverManager.getConnection(url, username, password);
            PreparedStatement stmt = conn.prepareStatement("SELECT * from users where blood_type = ?");
            stmt.setString(1, bloodGroup);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                String email = rs.getString("email");
                String name = rs.getString("username");
                String phone_no = String.valueOf(rs.getInt("phone_no"));
                String blood_type = rs.getString("blood_type");

                Donor donor = new Donor(email, name, phone_no, blood_type);
                donorList.add(donor);
            }
        } catch (Exception e) {
            e.printStackTrace(); // Handle exceptions properly in your application
        }
        return donorList;
    }
}
