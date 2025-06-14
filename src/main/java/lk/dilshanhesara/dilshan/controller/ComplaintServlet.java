package lk.dilshanhesara.dilshan.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.dilshanhesara.dilshan.dao.CmplainDAO;
import lk.dilshanhesara.dilshan.model.Complaint;

import java.io.IOException;

@WebServlet("/complaints")
public class ComplaintServlet extends HttpServlet {
    private CmplainDAO complaintDAO;

    public void init() {
        complaintDAO = new CmplainDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "list";
        }

        try {
            switch (action) {

                case "edit":


                    int idToEdit = Integer.parseInt(request.getParameter("id"));
                    Complaint existingComplaint = complaintDAO.getCompUp(idToEdit);

                    request.setAttribute("complaint", existingComplaint);

                    request.getRequestDispatcher("adminComplainFrom.jsp").forward(request, response);

                    break;

                default:
                    response.sendRedirect("dashboard");
                    break;
            }
        } catch (NumberFormatException e) {

            response.sendRedirect("dashboard?error=invalid_id");
            e.printStackTrace();
        }
    }



}
