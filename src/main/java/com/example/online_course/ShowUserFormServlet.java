package com.example.online_course;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "ShowUserFormServlet", value = "/ShowUserFormServlet")
public class ShowUserFormServlet extends HttpServlet {
    UserDAO userDAO = new UserDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer id = Integer.parseInt(request.getParameter("id"));
        try {
        User existingUser = userDAO.getUser(id);
            RequestDispatcher dispatcher = request.getRequestDispatcher("editProfile.jsp");
            request.setAttribute("user", existingUser);
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
