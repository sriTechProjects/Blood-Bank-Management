package Donation_center;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DatabaseUtils {
    private String url = "jdbc:mysql://localhost:3306/bms";
    private String username = "root";
    private String password = "a1b2c3";

    public List<DonationCenters> getDonationCenters() {
        List<DonationCenters> donationCenters = new ArrayList<>();

        try (Connection conn = DriverManager.getConnection(url, username, password);
             PreparedStatement stmt = conn.prepareStatement("SELECT * FROM donation_centers");
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                String centerId = rs.getString("center_id");
                String centerName = rs.getString("center_name");
                String address = rs.getString("address");
                String centerContact = rs.getString("center_contact");
                int operatingHours = rs.getInt("operating_hours");

                DonationCenters center = new DonationCenters(centerId, centerName, address, centerContact, operatingHours);
                donationCenters.add(center);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return donationCenters;
    }

    // Inner class DonationCenter
    public class DonationCenters{
        private String centerId;
        private String centerName;
        private String address;
        private String centerContact;
        private int operatingHours;

        public DonationCenters(String centerId, String centerName, String address, String centerContact, int operatingHours) {
            this.centerId = centerId;
            this.centerName = centerName;
            this.address = address;
            this.centerContact = centerContact;
            this.operatingHours = operatingHours;
        }

        // Getters
        public String getCenterId() {
            return centerId;
        }

        public String getCenterName() {
            return centerName;
        }

        public String getAddress() {
            return address;
        }

        public String getCenterContact() {
            return centerContact;
        }

        public int getOperatingHours() {
            return operatingHours;
        }

        // Setters
        public void setCenterId(String centerId) {
            this.centerId = centerId;
        }

        public void setCenterName(String centerName) {
            this.centerName = centerName;
        }

        public void setAddress(String address) {
            this.address = address;
        }

        public void setCenterContact(String centerContact) {
            this.centerContact = centerContact;
        }

        public void setOperatingHours(int operatingHours) {
            this.operatingHours = operatingHours;
        }

        // You can also override toString() method if you want to print the object
        @Override
        public String toString() {
            return "DonationCenter{" +
                    "centerId='" + centerId + '\'' +
                    ", centerName='" + centerName + '\'' +
                    ", address='" + address + '\'' +
                    ", centerContact=" + centerContact + '\'' +
                    ", operatingHours=" + operatingHours +
                    '}';
        }
    }

}
