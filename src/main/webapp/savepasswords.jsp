<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Save Passwords</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<%
request.setAttribute("activePage", "save");
%>

<jsp:include page="home.jsp" />
<div class="main-content">
    <h1>Save a New Password</h1>
    <p>Form or instructions to save a new password will go here.</p>
</div>
</body>
</html>
