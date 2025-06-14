package lk.dilshanhesara.dilshan.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lk.dilshanhesara.dilshan.dao.UserDAO;
import lk.dilshanhesara.dilshan.db.DBCPDataSource;
import lk.dilshanhesara.dilshan.model.User;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/login")
public class LoginServelet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws  IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        User user = validateUser(username, password);

        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            response.sendRedirect("adminDashboard.jsp");
        } else {
            response.sendRedirect("login.jsp?error=true");
        }
    }

    private User validateUser(String username, String password) {
        String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
        User user = null;

        try (Connection con = DBCPDataSource.getConnection();
             PreparedStatement pst = con.prepareStatement(sql)) {

            pst.setString(1, username);
            pst.setString(2, password);

            try (ResultSet rs = pst.executeQuery()) {
                if (rs.next()) {
                    user = new User();
                    user.setId(rs.getInt("user_id"));
                    user.setUsername(rs.getString("username"));
                    user.setRole(rs.getString("role"));
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;
    }
}
