package com.example.online_course;


import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CourseDAO {

    public Course getCourse(Integer id) throws SQLException {
        Course course = null;
        String sql = "SELECT * FROM courses WHERE id = ?";

        Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/online-course","postgres", "123");

        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setInt(1, id);

        ResultSet resultSet = statement.executeQuery();

        if (resultSet.next()) {
            String title = resultSet.getString("title");
            String description = resultSet.getString("description");
            String short_info = resultSet.getString("short_info");
            String img_src = resultSet.getString("img_src");
            String level = resultSet.getString("level");
            String duration = resultSet.getString("duration");

            course = new Course (id, title, description, short_info, img_src, duration, level);
        }

        resultSet.close();
        statement.close();

        return course;
    }


    public List<Course> getCourses() throws SQLException, ClassNotFoundException {
        List<Course> courseList = new ArrayList<>();

        String sql = "SELECT * FROM courses";
        Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/online-course","postgres", "123");

        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);

        while (resultSet.next()) {
            int id = resultSet.getInt("id");
            String title = resultSet.getString("title");
            String description = resultSet.getString("description");
            String short_info = resultSet.getString("short_info");
            String img_src = resultSet.getString("img_src");
            String duration = resultSet.getString("duration");
            String level = resultSet.getString("level");

            Course course = new Course();
            course.setId(id);
            course.setTitle(title);
            course.setDescription(description);
            course.setShort_info(short_info);
            course.setImg_src(img_src);
            course.setDuration(duration);
            course.setLevel(level);
            courseList.add(course);
        }

        resultSet.close();
        statement.close();
        connection.close();

        return courseList;
    }

    public boolean insertCourse(Course course) throws SQLException {
        String sql = "INSERT INTO courses (title, description, short_info, img_src, duration, level ) VALUES (?, ?, ?, ?, ?, ?)";
        Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/online-course","postgres", "123");

        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, course.getTitle());
        statement.setString(2, course.getDescription());
        statement.setString(3, course.getShort_info());
        statement.setString(4, course.getImg_src());
        statement.setString(5, course.getDuration());
        statement.setString(6, course.getLevel());

        boolean rowInserted = statement.executeUpdate() > 0;
        statement.close();
        connection.close();;
        return rowInserted;
    }

    public boolean deleteBook(Course course) throws SQLException {
        String sql = "DELETE FROM courses where id = ?";
        Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/online-course","postgres", "123");

        PreparedStatement statement = connection.prepareStatement(sql);

        statement.setInt(1, course.getId());

        boolean rowDeleted = statement.executeUpdate() > 0;
        statement.close();
        connection.close();;
        return rowDeleted;
    }



    public List<Course> getLastCourses() throws SQLException, ClassNotFoundException {
        List<Course> courseList = new ArrayList<>();

        String sql = "SELECT * FROM courses limit 3";
        Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/online-course","postgres", "123");

        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);

        while (resultSet.next()) {
            int id = resultSet.getInt("id");
            String title = resultSet.getString("title");
            String description = resultSet.getString("description");
            String short_info = resultSet.getString("short_info");
            String img_src = resultSet.getString("img_src");

            Course course = new Course();
            course.setId(id);
            course.setTitle(title);
            course.setDescription(description);
            course.setShort_info(short_info);
            course.setImg_src(img_src);

            courseList.add(course);
        }

        resultSet.close();
        statement.close();
        connection.close();

        return courseList;
    }
}

