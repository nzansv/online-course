package com.example.online_course;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "CourseDetailsServlet", value = "/CourseDetailsServlet")
public class CourseDetailServlet extends HttpServlet {
    CourseDAO courseDAO = new CourseDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer id = Integer.valueOf(request.getParameter("id"));
        try {
            Course course = courseDAO.getCourse(id);
            RequestDispatcher dispatcher = request.getRequestDispatcher("course-details.jsp");
            request.setAttribute("course", course);
            dispatcher.forward(request, response);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
