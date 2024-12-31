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
  </head>
  <body>
    <!-- Không nên dùng id khi điền form mà nên dùng path-->
    <div class="container mt-5">
      <div class="row">
        <div class="col-md-6 col-12 mx-auto">
          <h3>Create a user</h3>
          <hr />
          <form:form
            action="/admin/user/create1"
            method="post"
            modelAttribute="newUser"
          >
            <div>
              <label for="email" class="form-label">Email: </label>
              <form:input
                type="email"
                name="email"
                path="email"
                class="form-control"
                placeholder="Email"
              />
            </div>
            <div class="mt-4">
              <label for="Password" class="form-label">Password: </label>
              <form:input
                type="password"
                name="Password"
                path="password"
                class="form-control"
                placeholder="Password"
              />
            </div>
            <div class="mt-4">
              <label for="Phonenumber" class="form-label">Phonenumber: </label>
              <form:input
                type="number"
                name="Phonenumber"
                path="phoneNumber"
                class="form-control"
                placeholder="Phonenumber"
              />
            </div>
            <div class="mt-4">
              <label for="fullName" class="form-label">fullName: </label>
              <form:input
                type="text"
                name="fullName"
                path="fullName"
                class="form-control"
                placeholder="fullName"
              />
            </div>
            <div class="mt-4">
              <label for="Address" class="form-label">Address: </label>
              <form:input
                type="text"
                name="Address"
                path="Address"
                class="form-control"
                placeholder="Address"
              />
            </div>
            <div class="mt-4">
              <button class="btn btn-primary" type="submit">Create</button>
            </div>
          </form:form>
        </div>
      </div>
    </div>
  </body>
</html>
