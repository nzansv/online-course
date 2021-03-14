package com.example.online_course;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "AssignCourseServlet", value = "/AssignCourseServlet")
public class AssignCourseServlet extends HttpServlet {
    UserDAO userDAO = new UserDAO();
    CourseDAO courseDAO = new CourseDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
        Integer course_id = Integer.parseInt(request.getParameter("course_id"));
        Integer user_id = Integer.parseInt(request.getParameter("user_id"));
        User user = userDAO.getUser(user_id);
        Course course = courseDAO.getCourse(course_id);
        user.setCourse_id(course_id);
        HttpSession session = request.getSession();
        session.setAttribute("user", user);
        userDAO.updateUser(user);
        session.setAttribute("course", course);
        RequestDispatcher dispatcher = request.getRequestDispatcher("list");
        dispatcher.forward(request, response);

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }


    }


}
