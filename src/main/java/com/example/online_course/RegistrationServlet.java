package com.example.online_course;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(value = "/insertUser")
public class RegistrationServlet extends HttpServlet {

    UserDAO userDAO = new UserDAO();
    @Override
    protected void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullname = request.getParameter("fullname");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phone_number = request.getParameter("phone_number");

        User newUser = new User(fullname, username, password, email, phone_number);
        try {
            userDAO.insertUser(newUser);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        response.sendRedirect("login.jsp");
    }
}
