package com.example.online_course;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "ProfileServlet", value = "/ProfileServlet")
public class ProfileServlet extends HttpServlet {
    UserDAO userDAO = new UserDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Integer id = Integer.parseInt(request.getParameter("id"));
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String phone_number = request.getParameter("phone_number");
        String password = request.getParameter("password");
        HttpSession session = request.getSession();
        User user = new User(id, fullname,email,phone_number,password);
        session.setAttribute("user", user);
        try {
        userDAO.updateUser(user);
        RequestDispatcher dispatcher = request.getRequestDispatcher("profile.jsp");
        dispatcher.forward(request, response);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }


    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        }
}
