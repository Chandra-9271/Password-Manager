<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Registration Form</title>
  <link rel="stylesheet" href="css/register.css" />
</head>
<body>
  <div class="main">

    <%-- Show success message if present --%>
    <%
      String successMessage = (String) request.getAttribute("successMessage");
      String errorMessage = (String) request.getAttribute("errorMessage");
      if (successMessage != null) {
    %>
      <div class="success-message"><%= successMessage %></div>
    <% } else if (errorMessage != null) { %>
      <div class="error-message"><%= errorMessage %></div>
    <% } %>

    <h2>Registration Form</h2>
    <form action="register" method="post">
      <label for="username">Username:</label>
      <input type="text" id="username" name="username" required />

      <label for="email">Email:</label>
      <input type="email" id="email" name="email" required />

      <label for="password">Password:</label>
      <input type="password" id="password" name="password" required />

      <label for="repassword">Repeat Password:</label>
      <input type="password" id="repassword" name="repassword" required />

      <button type="submit"><b>Submit</b></button>

      <div class="signin-link">
        Already have an account? <a href="login.jsp">Sign in here</a>
      </div>
    </form>
  </div>
</body>
</html>
