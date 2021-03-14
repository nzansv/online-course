package com.example.online_course;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.*;
import java.util.List;

@WebServlet(value = "/login")
public class LoginServlet extends HttpServlet {
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        doGet(req, resp);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        UserDAO userDao = new UserDAO();
        CourseDAO courseDAO = new CourseDAO();

        try {
            User user = userDao.checkLogin(username, password);
            String destPage = "login.jsp";
            if (user != null) {
                HttpSession session = request.getSession();
                session.setAttribute("user", user);
                if(user.isAdmin()){
                    destPage="admin-home.jsp";
                    List<Course> courseList = courseDAO.getCourses();
                    request.setAttribute("courseList", courseList);
                } else {
                    destPage = "home.jsp";
                    List<Course> courseList = courseDAO.getLastCourses();
                    request.setAttribute("courseList", courseList);
                }

                session.setMaxInactiveInterval(30*60);
                Cookie userName = new Cookie("username", username);
                userName.setMaxAge(30*60);


            } else {
                String message = "Invalid username/password";
                request.setAttribute("message", message);
            }

            RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
            dispatcher.forward(request, response);

        } catch (SQLException | ClassNotFoundException ex) {
            throw new ServletException(ex);
        }
    }
}
