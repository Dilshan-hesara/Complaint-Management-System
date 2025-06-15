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
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
  <style>

    body {
      font-family: 'Inter', sans-serif;
      background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100vh;
      margin: 0;
    }

    .signup-card {
      width: 100%;
      max-width: 450px;
      border: none;
      border-radius: 1rem;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
      backdrop-filter: blur(10px);
      background-color: rgba(255, 255, 255, 0.9);

      animation: fadeIn 0.5s ease-in-out;
    }

    @keyframes fadeIn {
      from {
        opacity: 0;
        transform: translateY(-20px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    .card-title {
      font-weight: 700;
      font-size: 1.75rem;
      color: #333;
    }

    .form-control {
      border-radius: 0.5rem;
      padding: 0.85rem 1rem;
      border: 1px solid #ddd;
      transition: all 0.3s ease;
    }

    .form-control:focus {
      border-color: #0d6efd;
      box-shadow: 0 0 0 0.25rem rgba(13, 110, 253, 0.2);
    }

    .form-label {
      font-weight: 500;
      color: #555;
    }

    .btn-primary {
      padding: 0.85rem;
      font-weight: 600;
      border-radius: 0.5rem;
      transition: all 0.3s ease;
      box-shadow: 0 4px 15px rgba(13, 110, 253, 0.2);
    }

    .btn-primary:hover {
      transform: translateY(-2px);
      box-shadow: 0 6px 20px rgba(13, 110, 253, 0.3);
    }

    .alert {
      border-radius: 0.5rem;
    }

    .text-center a {
      color: #0d6efd;
      font-weight: 600;
      text-decoration: none;
      transition: all 0.3s ease;
    }

    .text-center a:hover {
      text-decoration: underline;
      opacity: 0.8;
    }
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
