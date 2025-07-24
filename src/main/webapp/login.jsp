<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Login Form</title>
  <link rel="stylesheet" href="css/login.css" />
</head>
<body>
  <div class="main">

    <%-- Show error message if present --%>
    <%
      String errorMessage = (String) request.getAttribute("errorMessage");
      if (errorMessage != null) {
    %>
      <div class="error-message"><%= errorMessage %></div>
    <% } %>

    <h1>Log-In</h1>
    <h3>Enter your login credentials</h3>

    <form action="Login" method="post">
      <label for="first">Email:</label>
      <input type="email" id="first" name="email" placeholder="Enter your Email" required>

      <label for="password">Password:</label>
      <input type="password" id="password" name="password" placeholder="Enter your Password" required>

      <div class="wrap">
        <button type="submit"><b>Submit</b></button>
      </div>
    </form>

    <p>Not registered?
      <a href="register.jsp">Create an account</a>
    </p>
  </div>
</body>
</html>
