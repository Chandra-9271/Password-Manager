<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.util.*"%>
<%
String user = (String) session.getAttribute("user");
if (user == null) {
	response.sendRedirect("login.jsp");
	return;
}
%>
<%
request.setAttribute("activePage", "your");
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Your Passwords</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<link rel="stylesheet" href="css/your_password.css">
<link rel="icon" href="images/icon.jpg">
</head>
<body>

	<jsp:include page="sidenav.jsp" />

	<div class="main-content">
		<h1>
			Welcome, <%=user%></h1>

		<div class="main-content1">
			<div class="header-row">
				<a href="add_password.jsp"
					style="display: flex; align-items: center; text-decoration: none;">
					<img src="images/plus_logo.png" alt="Logo" class="add-icon" width=45px height=45px style="color:blue;">
					<h2 style="color: #4caf50; margin: 0;">Add Password</h2>
				</a>
			</div>


			<div class="password-list">
				<%
				List<String[]> passwordList = (List<String[]>) request.getAttribute("passwordList");
				if (passwordList != null) {
					for (String[] pw : passwordList) {
				%>
				<a href="ViewPassword?id=<%=pw[0]%>" class="password-item"
					style="text-decoration: none;"> 
					<img src="images/key_logo.png" alt="logo" class="item-icon" width=35px height=35px> <span><%=pw[1]%></span>
				</a>
				<%
				}
				} else {
				%>
				<p style="color: #ccc;">No passwords saved yet.</p>
				<%
				}
				%>
			</div>


		</div>

	</div>
</body>
</html>
