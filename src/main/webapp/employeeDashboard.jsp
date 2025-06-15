<%--
  Created by IntelliJ IDEA.
  User: Dilshan Hesara
  Date: 14/06/2025
  Time: 00:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="lk.dilshanhesara.dilshan.model.Complaint" %>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">


    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Segoe UI', sans-serif;
        }

        .navbar {
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }

        .container {
            max-width: 1400px;
        }

        .card {
            border: none;
            border-radius: 8px;
            overflow: hidden;
        }

        .table {
            font-size: 0.9rem;
        }

        .table thead th {
            background-color: #f1f5f9;
            color: #64748b;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.05em;
            border-top: 1px solid #e2e8f0;
            border-bottom: 2px solid #e2e8f0;
        }

        .table tbody tr {
            transition: background-color 0.2s ease;
        }

        .table tbody tr:hover {
            background-color: #f8fafc;
        }

        .table tbody tr td {
            vertical-align: middle;
            border-color: #edf2f7;
        }

        .badge {
            padding: 0.5em 0.75em;
            font-weight: 500;
            border-radius: 4px;
        }

        .btn-sm {
            padding: 0.25rem 0.5rem;
            font-size: 0.8rem;
            border-radius: 4px;
        }

        .text-muted {
            color: #94a3b8;
        }
    </style>
</head>
<body>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="#">CMS</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link active" href="#">My Complaints</a></li>
            </ul>

            <span class="navbar-text text-white me-3">
    Welcome, <%= ((lk.dilshanhesara.dilshan.model.User) request.getAttribute("logUser")).getUsername() %>!
</span>

            <a href="logout" class="btn btn-outline-light">Logout</a> </div>
    </div>
</nav>

<div class="container mt-4">
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h3>My Submitted Complaints</h3>
        <a href="complaints?action=add" class="btn btn-primary"><i class="bi bi-plus-circle"></i> Add New Complaint</a>
    </div>

    <div class="card shadow-sm">
        <div class="card-body">
            <table class="table table-hover">
                <thead class="table-light">
                <tr>
                    <th>ID</th>
                    <th>Title</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
                </thead>



                <tbody>
                <%
                    List<Complaint> complaintsList = (List<Complaint>) request.getAttribute("complaintsList");

                    if (complaintsList != null && !complaintsList.isEmpty()) {

                        for (Complaint complaint : complaintsList) {
                %>
                <tr>
                    <td>#<%= complaint.getId() %></td>
                    <td><%= complaint.getTitle() %></td>
                    <td>
                        <% if ("Resolved".equals(complaint.getStatus())) { %>
                        <span class="badge bg-success">Resolved</span>
                        <% } else if ("In Progress".equals(complaint.getStatus())) { %>
                        <span class="badge bg-warning text-dark">In Progress</span>
                        <% } else { %>
                        <span class="badge bg-info text-dark">Submitted</span>
                        <% } %>
                    </td>
                    <td>
                        <% if ("Resolved".equals(complaint.getStatus())) { %>
                        <a href="#" class="btn btn-sm btn-outline-secondary disabled" aria-disabled="true">Edit</a>
                        <a href="#" class="btn btn-sm btn-outline-danger disabled" aria-disabled="true">Delete</a>
                        <% } else { %>
                        <a href="complaints?action=uedit&id=<%= complaint.getId() %>" class="btn btn-sm btn-outline-secondary">Edit</a>
                        <a href="complaints?action=delete&id=<%= complaint.getId() %>" class="btn btn-sm btn-outline-danger" onclick="return confirm('Are you sure you want to delete this complaint?')">Delete</a>
                        <% } %>
                    </td>
                </tr>
                <%
                    }
                } else {
                %>
                <tr>
                    <td colspan="4" class="text-center text-muted">You have not submitted any complaints yet.</td>
                </tr>
                <%
                    }
                %>
                </tbody>
            </table>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
