<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title><%= request.getAttribute("accountName") %></title>
<link rel="stylesheet" href="css/view_password.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<link rel="icon" href="images/icon.jpg">
</head>
<body>

<div class="view-container" style="position: relative;">
    <!-- Save button (hidden until Edit clicked) -->
    <button type="submit" form="editForm" id="saveBtn" 
            style="position:absolute; top:15px; right:15px; display:none; background-color:#4caf50; color:white; padding:8px 16px; border:none; border-radius:5px; cursor:pointer; font-weight:bold;">
        Save
    </button>

    <!-- Form -->
    <form id="editForm" method="post" action="UpdatePassword">
        <!-- Pass ID to servlet -->
        <input type="hidden" name="id" value="<%= request.getParameter("id") %>">
			 <a href="YourPasswords"  class="bbtn">Back</a>
			 <br>
        <div class="header">
       
            <img src="images/key_logo.png" alt="Logo" class="logo" width=40px height=40px>
            <div class="title-block">
                <h2><%= request.getAttribute("accountName") %></h2>
            </div>
        </div>

        <div class="field">
            <input type="text" id="usernameField" name="username" readonly value="<%= request.getAttribute("username") %>">
            <button type="button" onclick="copyText(document.getElementById('usernameField').value)"><i class="fas fa-copy"></i></button>
        </div>

        <div class="field">
            <input type="password" id="passwordField" name="password" readonly value="<%= request.getAttribute("password") %>">
            <button type="button" onclick="togglePassword()"><i class="fas fa-eye"></i></button>
            <button type="button" onclick="copyText(document.getElementById('passwordField').value)"><i class="fas fa-copy"></i></button>
        </div>

        <div class="note">
            <textarea id="notesField" name="notes" readonly style="width:100%; border:none; background:none; resize:none; font-family:inherit; font-size:inherit;">
<%= request.getAttribute("notes") == null ? "No notes" : request.getAttribute("notes") %>
            </textarea>
        </div>
    </form>

    <div class="actions" id="actionBtns">
        <button class="edit" onclick="enableEdit()">Edit</button>
        <form method="post" action="DeletePassword" style="display:inline;">
            <input type="hidden" name="id" value="<%= request.getParameter("id") %>">
            <button type="submit" class="delete">Delete</button>
        </form>
    </div>
</div>

<script>
function togglePassword() {
    var field = document.getElementById("passwordField");
    field.type = field.type === "password" ? "text" : "password";
}
function copyText(text) {
    navigator.clipboard.writeText(text).then(() => alert("Copied!"));
}
function enableEdit() {
    document.getElementById("usernameField").readOnly = false;
    document.getElementById("passwordField").readOnly = false;
    document.getElementById("notesField").readOnly = false;
    document.getElementById("saveBtn").style.display = "inline-block";
    document.getElementById("actionBtns").style.display = "none";
}
</script>

</body>
</html>
