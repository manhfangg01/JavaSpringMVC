<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%> <%@
page contentType="text/html" pageEncoding="UTF-8" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>User Detail - ID: ${id}</title>
    <!-- Latest compiled and minified CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    <!-- Google Fonts -->
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;700&display=swap"
      rel="stylesheet"
    />
    <style>
      body {
        font-family: "Poppins", sans-serif;
        background-color: #f8f9fa;
      }
      .container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
      }
      .card {
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
      }
      .card-header {
        font-size: 28px;
        font-weight: 700;
        background: #007bff;
        color: white;
        text-align: center;
      }
      .list-group-item {
        font-size: 18px;
      }
      .hidden-text {
        letter-spacing: 3px;
      }
      .toggle-password {
        cursor: pointer;
        margin-left: 10px;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <div class="col-md-8 col-lg-6">
        <div class="card">
          <div class="card-header">User Information</div>
          <ul class="list-group list-group-flush">
            <li class="list-group-item">
              Full Name: <strong>${user.fullName}</strong>
            </li>
            <li class="list-group-item">
              Email: <strong>${user.email}</strong>
            </li>
            <li class="list-group-item">
              Password: <span id="password" class="hidden-text">*****</span>
              <i id="togglePassword" class="toggle-password bi bi-eye"></i>
            </li>
            <li class="list-group-item">
              Address: <strong>${user.address}</strong>
            </li>
            <li class="list-group-item">
              Contact Number: <strong>${user.phoneNumber}</strong>
            </li>
            <li class="list-group-item">
              <a href="/admin/user" class="btn btn-success">Back</a>
            </li>
          </ul>
        </div>
      </div>
    </div>

    <!-- Add Bootstrap Icons for the eye toggle -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css"
      rel="stylesheet"
    />

    <script>
      document
        .getElementById("togglePassword")
        .addEventListener("click", function () {
          const passwordSpan = document.getElementById("password");
          if (passwordSpan.textContent === "*****") {
            passwordSpan.textContent = "${user.password}";
            this.classList.remove("bi-eye");
            this.classList.add("bi-eye-slash");
          } else {
            passwordSpan.textContent = "*****";
            this.classList.remove("bi-eye-slash");
            this.classList.add("bi-eye");
          }
        });
    </script>
  </body>
</html>
