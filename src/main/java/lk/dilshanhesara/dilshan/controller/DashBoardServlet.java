package lk.dilshanhesara.dilshan.controller;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lk.dilshanhesara.dilshan.model.User;

import java.io.IOException;
import java.util.List;

@WebServlet("/dashboard")
public class DashBoardServlet  extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session == null || session.getAttribute("user") == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        User user = (User) session.getAttribute("user");

        if ("Admin".equals(user.getRole())) {
            request.getRequestDispatcher("adminDashboard.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("employeeDashboard.jsp").forward(request, response);
        }
    }
}
