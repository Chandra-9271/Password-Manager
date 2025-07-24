<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setAttribute("activePage", "check");
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Password Strength Checker</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" crossorigin="anonymous" referrerpolicy="no-referrer" />
  
  <link rel="stylesheet" href="css/pstrength.css" />
  <link rel="icon" href="images/icon.jpg">
</head>
<body>

<jsp:include page="sidenav.jsp" />

<div class="container">
  <h2>Password Strength Checker</h2><hr>
  
  <div class="checker-wrapper">
    <div class="checker-left">
      <form action="checkStrength" method="post">
        <label for="passwordInput">Enter Password:</label>
        <div class="password-wrapper">
          <input type="password" id="passwordInput" name="password" placeholder="Type your password..."
                 value="<%= request.getAttribute("password") != null ? request.getAttribute("password") : "" %>">
          <i class="fa fa-eye-slash" id="togglePassword" onclick="toggleVisibility()" 
             style="position:absolute; right:10px; top:60%; transform:translateY(-50%); cursor:pointer;"></i>
        </div>
        <button id="sbtn" type="submit">Check Strength</button>
      </form>

      <% 
         String strength = (String)request.getAttribute("strength");
         if (strength != null) { 
      %>
        <div class="strength-result <%=strength.toLowerCase() %>">
          <%=strength %> Password
          <br>
          <% if ("Weak".equalsIgnoreCase(strength)) { %>
            <img src="images/weak_img.png" alt="Weak password" class="strength-img">
          <% } else if ("Medium".equalsIgnoreCase(strength)) { %>
            <img src="images/medium_img.png" alt="Medium password" class="strength-img">
          <% } else if ("Strong".equalsIgnoreCase(strength)) { %>
            <img src="images/strong_img.png" alt="Strong password" class="strength-img">
          <% } %>
        </div>
      <% } else { %>
        <div class="strength-result">Strength will be shown here</div>
      <% } %>
    </div>

  </div>
</div>
<div class="checker-right">
      <img src="images/pstre1.jpg" alt="Password Strength" class="side-image">
    </div>

<script>
function toggleVisibility() {
    const input = document.getElementById("passwordInput");
    const icon = document.getElementById("togglePassword");

    if (input.type === "password") {
        input.type = "text";
        icon.classList.remove("fa-eye-slash");
        icon.classList.add("fa-eye");
    } else {
        input.type = "password";
        icon.classList.remove("fa-eye");
        icon.classList.add("fa-eye-slash");
    }
}
</script>

</body>
</html>
