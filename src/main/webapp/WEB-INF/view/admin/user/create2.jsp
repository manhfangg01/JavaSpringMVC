<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%> <%@
page contentType="text/html" pageEncoding="UTF-8" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <!-- Latest compiled and minified CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <!-- <link rel="stylesheet" href="/css/demo.css"> -->

    <!-- Google Fonts -->
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap"
      rel="stylesheet"
    />
    <style>
      .tableText {
        font-family: "Poppins", sans-serif;
        font-size: 24px;
        font-weight: 500;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <div class="row">
        <div class="col-12 mx-auto">
          <div class="d-flex justify-content-between">
            <span class="tableText">TableUsers</span>
            <a href="/admin/user/create" class="btn btn-primary">Create User</a>
          </div>
          <hr />
          <table
            class="table table-hover table-bordered"
            style="transition: 0.5 ease"
          >
            <tr>
              <th>ID</th>
              <th>Email</th>
              <th>Full Name</th>
              <th>Action</th>
            </tr>
            <!-- <tr>
              <th>1</th>
              <td>Mark</td>
              <td>Otto</td>
              <td>
                <a href="#" class="btn btn-success">View</a>
                <a href="#" class="btn btn-warning">Update</a>
                <a href="#" class="btn btn-danger">Delete</a>
              </td>
            </tr>
            <tr>
              <th>2</th>
              <td>Jacob</td>
              <td>Thornton</td>
              <td>
                <a href="#" class="btn btn-success">View</a>
                <a href="#" class="btn btn-warning">Update</a>
                <a href="#" class="btn btn-danger">Delete</a>
              </td>
            </tr> -->
            <c:forEach var="user" items="${users1}">
              <tr>
                <th>${user.id}</th>
                <td>${user.email}</td>
                <td>${user.fullName}</td>
                <td>
                  <a href="#" class="btn btn-success">View</a>
                  <a href="#" class="btn btn-warning">Update</a>
                  <a href="#" class="btn btn-danger">Delete</a>
                </td>
              </tr>
            </c:forEach>
          </table>
        </div>
      </div>
    </div>
  </body>
</html>
