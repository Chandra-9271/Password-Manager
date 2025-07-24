<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String activePage = (String) request.getAttribute("activePage");
    String user = (String) session.getAttribute("user");
%>
<link rel="stylesheet" href="css/sidenav.css" />
<div class="sidebar">
    <div class="logo">
        <img src="images/pwd_logo.png" alt="Logo">
        <h3>Password Manager</h3>
    </div>
    <ul class="nav-links">
        <li><a href="home.jsp" class="<%= "home".equals(activePage) ? "active" : "" %>">Home</a></li>
        <li><a href="YourPasswords" class="<%= "your".equals(activePage) ? "active" : "" %>">Your Passwords</a></li>
        <li><a href="password_generator.jsp" class="<%= "generator".equals(activePage) ? "active" : "" %>">Password Generator</a></li>
        <li><a href="passwordStrength.jsp" class="<%= "check".equals(activePage) ? "active" : "" %>">Check Password Strength</a></li>
        <li><a href="faqs.jsp" class="<%= "faqs".equals(activePage) ? "active" : "" %>">FAQs</a></li>
        <li><a href="about.jsp" class="<%= "about".equals(activePage) ? "active" : "" %>">About Us</a></li>
    </ul>

    <%-- Show logout only if user is logged in --%>
    <% if (user != null) { %>
    <div class="logout">
        <a href="LogoutServlet"><i class="fas fa-sign-out-alt"></i> Log Out</a>
    </div>
    <% } %>
</div>
