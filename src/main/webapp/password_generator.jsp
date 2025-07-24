<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
request.setAttribute("activePage", "generator");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>Password Generator</title>
<link rel="stylesheet" href="css/passgen.css" />
<link rel="icon" href="images/icon.jpg">
</head>
<body>

<jsp:include page="sidenav.jsp" />
<div class="main-content">
<video autoplay muted loop playsinline class="bg-video">
        <source src="images/video2.mp4" type="video/mp4">
        Your browser does not support HTML5 video.
    </video>
<div class="container">
  <h2>Password Generator</h2><hr>

  <form action="generatePassword" method="post">
    <label for="length">Password Length:</label>
    <input type="number" name="length" id="length" min="8" max="50" value="8" required>

    <div class="options">
      <label><input type="checkbox" name="includeUpper" checked> <b>Include Uppercase Letters</b></label><br>
      <label><input type="checkbox" name="includeLower" checked> <b>Include Lowercase Letters</b></label><br>
      <label><input type="checkbox" name="includeNumbers" checked> <b>Include Numbers</b></label><br>
      <label><input type="checkbox" name="includeSymbols" checked> <b>Include Symbols</b></label>
    </div>

    <button type="submit">Generate Password</button>
  </form>

  <div class="output">
    <% String generatedPassword = (String) request.getAttribute("generatedPassword");
       if (generatedPassword != null) { %>
       <span><%= generatedPassword %></span>
    <% } else { %>
      <span>Your password will appear here</span> 
    <% } %>
  </div>
</div>
</div>
</body>
</html>
