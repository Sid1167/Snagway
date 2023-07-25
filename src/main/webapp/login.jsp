<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="ISO-8859-1">
  <title>Login</title>
  <link rel="stylesheet" href="./css/login-style.css">

</head>
<body>
<!-- partial:index.partial.html -->
<div id="main" class="main-container">
<%@ include file="navbar.jsp" %>
<div class="box">
  <h2>Login</h2>
  <form method="post" action="login-check.jsp">
    <div class="input-box">
      <input id="user-name" type="email" name="l-email" required>
      <label>Email</label>
    </div>
    <div class="input-box">
      <input id="user-pass" type="password" name="l-pass" required>
      <label>Password</label>
    </div>
    <input id="submit" type="submit" name="" value="Login">
  </form>
  <p><a href="#">Lost your password?</a></p>
  <p><a href="register.jsp">Register</a></p>
</div>
</div>

<div id="logged-in">
</div>
<!-- partial -->
  <%@ include file="footer.jsp" %>

</body>
</html>
