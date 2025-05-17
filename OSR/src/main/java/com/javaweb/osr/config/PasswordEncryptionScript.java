package com.javaweb.osr.config;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class PasswordEncryptionScript {
   public static void main(String[] args) {
       PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

       try {
           // Kết nối với cơ sở dữ liệu
           String url = "jdbc:mysql://localhost:3306/OfficeSpaceRental";
           String username = "root";
           String password = "";

           Connection connection = DriverManager.getConnection(url, username, password);

           // Lấy tất cả user và mật khẩu plain text
           String selectQuery = "SELECT userID, password FROM user";
           PreparedStatement selectStmt = connection.prepareStatement(selectQuery);

           ResultSet rs = selectStmt.executeQuery();

           while (rs.next()) {
               int userId = rs.getInt("userID");
               String plainTextPassword = rs.getString("password");

               // Mã hóa mật khẩu
               String encodedPassword = passwordEncoder.encode(plainTextPassword);

               // Cập nhật mật khẩu mã hóa vào cơ sở dữ liệu
               String updateQuery = "UPDATE user SET password = ? WHERE userID = ?";
               PreparedStatement updateStmt = connection.prepareStatement(updateQuery);
               updateStmt.setString(1, encodedPassword);
               updateStmt.setInt(2, userId);

               updateStmt.executeUpdate();
               System.out.println("Updated password for user ID: " + userId);
           }

           rs.close();
           selectStmt.close();
           connection.close();
       } catch (Exception e) {
           e.printStackTrace();
       }
   }
}
