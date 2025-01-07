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
        <div class="col-md-6 col-12 mx-auto">
          <h3>Update a user</h3>
          <hr />
          <form:form
            action="/admin/user/update"
            method="post"
            modelAttribute="newUser"
          >
            <div class="mt-4" style="display: none">
              <form:input
                type="text"
                name="id"
                path="id"
                class="form-control"
                readonly="true"
              />
            </div>
            <div class="mt-4">
              <label for="email" class="form-label">Email:</label>
              <form:input
                type="email"
                name="email"
                value=""
                path="email"
                class="form-control"
                placeholder="email"
                disabled="true"
              />
            </div>

            <div class="mt-4">
              <label for="Phone Number" class="form-label">Phone Number:</label>
              <form:input
                type="text"
                name="Phone Number"
                value=""
                path="phoneNumber"
                class="form-control"
                placeholder="Phone Number"
              />
            </div>

            <div class="mt-4">
              <label for="Full Name" class="form-label">Full Name:</label>
              <form:input
                type="text"
                name="Full Name"
                value=""
                path="fullName"
                class="form-control"
                placeholder="Full Name"
              />
            </div>
            <div class="mt-4">
              <label for="Address" class="form-label">Address:</label>
              <form:input
                type="text"
                name="Address"
                value=""
                path="address"
                class="form-control"
                placeholder="Address"
              />
            </div>

            <div class="mt-4">
              <button class="btn btn-warning" type="submit">Update</button>
            </div>
          </form:form>
        </div>
      </div>
    </div>
  </body>
</html>
