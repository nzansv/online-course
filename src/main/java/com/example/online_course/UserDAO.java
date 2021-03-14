package com.example.online_course;

import java.sql.*;

public class UserDAO {

    public boolean updateUser(User user) throws SQLException {
        String sql = "UPDATE users SET fullname = ?, email = ?, phone_number = ?, password = ? WHERE id = ?";
        Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/online-course","postgres", "123");

        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setString(1, user.getFullname());
        statement.setString(2, user.getEmail());
        statement.setString(3,user.getPhone_number() );
        statement.setString(4, user.getPassword() );
        statement.setInt(5,user.getId());

        boolean rowUpdated = statement.executeUpdate() > 0;
        statement.close();
        conn.close();
        return rowUpdated;
    }

    public boolean updateUserId(User user) throws SQLException {
        String sql = "UPDATE users SET course_id = ? WHERE id = ?";
        Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/online-course","postgres", "123");

        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setInt(1, user.getCourse_id());
        statement.setInt(2,user.getId());

        boolean rowUpdated = statement.executeUpdate() > 0;
        statement.close();
        conn.close();
        return rowUpdated;
    }

    public User getUser(Integer id) throws SQLException {
        User user = null;
        String sql = "SELECT * FROM users WHERE id = ?";

        Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/online-course","postgres", "123");

        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setInt(1, id);

        ResultSet resultSet = statement.executeQuery();

        if (resultSet.next()) {
            String fullname = resultSet.getString("fullname");
            String email = resultSet.getString("email");
            String phone_number = resultSet.getString("phone_number");
            String password = resultSet.getString("password");

            user = new User(id,fullname,email,phone_number,password);
        }

        resultSet.close();
        statement.close();

        return user;
    }

    public boolean insertUser(User user) throws SQLException {
        String sql = "INSERT INTO users (fullname,username, password, email, phone_number ) VALUES (?, ?, ?, ?, ?)";
        Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/online-course","postgres", "123");

        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, user.getFullname());
        statement.setString(2, user.getUsername());
        statement.setString(3, user.getPassword());
        statement.setString(4, user.getEmail());
        statement.setString(5, user.getPhone_number());

        boolean rowInserted = statement.executeUpdate() > 0;
        statement.close();
        connection.close();;
        return rowInserted;
    }

    public User checkLogin(String username, String password) throws SQLException,
            ClassNotFoundException {

        Class.forName("org.postgresql.Driver");
        Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/online-course","postgres", "123");
        String sql = "SELECT * FROM users WHERE username = ? and password = ?";
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setString(1, username);
        statement.setString(2, password);

        ResultSet result = statement.executeQuery();

        User user = null;

        if (result.next()) {
            user = new User();
            user.setId(result.getInt("id"));
            user.setFullname(result.getString("fullname"));
            user.setUsername(result.getString("username"));
            user.setEmail(result.getString("email"));
            user.setPhone_number(result.getString("phone_number"));
            user.setAdmin(result.getBoolean("isAdmin"));
        }

        conn.close();

        return user;
    }
}
