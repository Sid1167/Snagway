<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="ISO-8859-1">
  <title>Sign up</title>
  <link rel="stylesheet" href="./css/login-style.css">

</head>
<body>
<!-- partial:index.partial.html -->
<div id="main" class="main-container">
<%@ include file="navbar.jsp" %>
<div class="box">
  <h2>Register</h2>
  <form method=post action="Register-back.jsp">
    <div class="input-box">
      <input id="user-name" type="text" name="r-name" required>
      <label>Name</label>
    </div>
    <div class="input-box">
      <input id="user-name" type="text" name="r-username" required>
      <label>Username</label>
    </div>
    <div class="input-box">
      <input id="user-name" type="email" name="r-mail" required>
      <label>Email</label>
    </div>
    <div class="input-box">
      <input id="user-pass" type="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
      title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters"
      name="r-pass" required>
      <label>Password</label>
    </div>

    <input id="submit" type="submit" name="" value="Signup">
  </form>
  <p><a href="login.jsp">I have an Account</a></p>
</div>
</div>

<div id="logged-in">
</div>
<!-- partial -->
  <%@ include file="footer.jsp" %>

</body>
</html>
