package com.example.online_course;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(value = "/")
public class CourseControllerServlet extends HttpServlet {
    CourseDAO courseDAO = new CourseDAO();
    UserDAO userDAO = new UserDAO();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getServletPath();

        try {
            switch (action) {
                case "/new":
                    showNewForm(request, response);
                    break;
                case "/insert":
                    insertCourse(request, response);
                    break;
                case "/lastList":
                    listLastCourse(request, response);
                    break;
                case "/adminList":
                    listAdminCourse(request, response);
                    break;
                case "/list":
                    listCourse(request, response);
                    break;
                case "/delete":
                    deleteCourse(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }
    private void listCourse(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        try {
            String destPage = "all-courses.jsp";
            List<Course> courseList = courseDAO.getCourses();
            request.setAttribute("courseList", courseList);
            RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
            dispatcher.forward(request, response);

        } catch (SQLException | ClassNotFoundException ex) {
            throw new ServletException(ex);
        }
    }
    private void listAdminCourse(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        try {
            String destPage = "admin-home.jsp";
            List<Course> courseList = courseDAO.getCourses();
            request.setAttribute("courseList", courseList);
            RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
            dispatcher.forward(request, response);

        } catch (SQLException | ClassNotFoundException ex) {
            throw new ServletException(ex);
        }
    }

    private void listLastCourse(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        try {
            String destPage = "home.jsp";
            List<Course> courseList = courseDAO.getLastCourses();
            request.setAttribute("courseList", courseList);
            RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
            dispatcher.forward(request, response);

        } catch (SQLException | ClassNotFoundException ex) {
            throw new ServletException(ex);
        }
    }
    private void deleteCourse(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));

        Course course = new Course(id);
        courseDAO.deleteBook(course);
        response.sendRedirect("adminList");

    }
    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("add-course.jsp");
        dispatcher.forward(request, response);
    }

    private void insertCourse(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String short_info = request.getParameter("short_info");
        String img_src = request.getParameter("img_src");
        String duration = request.getParameter("duration");
        String level = request.getParameter("level");


        Course newCourse = new Course(title, description, short_info,img_src, duration, level);
        courseDAO.insertCourse(newCourse);
        response.sendRedirect("adminList");
    }
}
