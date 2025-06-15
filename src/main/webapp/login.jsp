<%--
  Created by IntelliJ IDEA.
  User: Dilshan Hesara
  Date: 13/06/2025
  Time: 23:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background-color: #f8f9fa;
        }
        .login-card {
            width: 100%;
            max-width: 400px;
        }
    </style>

</head>
<body>

<div class="card login-card shadow-sm">
    <div class="card-body p-5">
        <h3 class="card-title text-center mb-4">Login</h3>

        <form action="login" method="post"> <div class="mb-3">
            <label for="username" class="form-label">Username</label>
            <input type="text" class="form-control" id="username" name="username" required>
        </div>
            <div class="mb-4">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>
            <div class="d-grid">
                <button type="submit" class="btn btn-primary">Login</button>
            </div>
        </form>

        <%
            if ("true".equals(request.getParameter("success"))) {
        %>
        <div class="alert alert-success mt-3" role="alert">
            Registration successful! Please login.
        </div>
        <%
            }
        %>

        <div class="text-center mt-3">
            <p>Don't have an account? <a href="signup.jsp">Sign Up</a></p>
        </div>

        <%
            String errorMessage = (String) request.getAttribute("errorMessage");
            if (errorMessage != null) {
        %>
        <div class="alert alert-danger" role="alert">
            <%= errorMessage %>
        </div>
        <%
            }
        %>

        <form action="login" method="post">
        </form>
    </div>
</div>

</body>
</html>
