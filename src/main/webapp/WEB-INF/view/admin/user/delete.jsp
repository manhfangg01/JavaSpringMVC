<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%> <%@
page contentType="text/html" pageEncoding="UTF-8" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  </head>
  <body>
    <div class="container mt-5">
      <div class="row">
        <div class="col-md-8 col-12 mx-auto">
          <h1>Delete the user with ID = ${id}</h1>
          <hr />
          <div class="alert alert-danger">
            Are you sure to delete this user from the Database ?
          </div>
          <form:form
            action="/admin/user/delete"
            method="post"
            modelAttribute="newUser"
          >
            <div class="mt-4" style="display: none">
              <form:input
                type="text"
                name="id"
                path="id"
                class="form-control"
                value="${id}"
                readonly="true"
              />
            </div>
            <button class="btn btn-danger">Confirm</button></form:form
          >
        </div>
      </div>
    </div>
  </body>
</html>
