<%--
  Created by IntelliJ IDEA.
  User: Dilshan Hesara
  Date: 15/06/2025
  Time: 09:09
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>CMS - Sign Up</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body { display: flex; align-items: center; justify-content: center; height: 100vh; background-color: #f8f9fa; }
    .signup-card { width: 100%; max-width: 450px; }
  </style>
</head>
<body>
<div class="card signup-card shadow-sm">
  <div class="card-body p-5">
    <h3 class="card-title text-center mb-4">Create Employee Account</h3>

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

    <form action="signup" method="post">
      <div class="mb-3">
        <label for="username" class="form-label">Username</label>
        <input type="text" class="form-control" id="username" name="username" required>
      </div>
      <div class="mb-3">
        <label for="password" class="form-label">Password</label>
        <input type="password" class="form-control" id="password" name="password" required>
      </div>
      <div class="mb-4">
        <label for="confirmPassword" class="form-label">Confirm Password</label>
        <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" required>
      </div>
      <div class="d-grid">
        <button type="submit" class="btn btn-primary">Sign Up</button>
      </div>
    </form>

    <div class="text-center mt-3">
      <p>Already have an account? <a href="login.jsp">Login</a></p>
    </div>
  </div>
</div>
</body>
</html>
