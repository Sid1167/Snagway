<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" import="java.security.*" 
    import="java.security.NoSuchAlgorithmException" import="java.util.HashMap" 
    import="java.util.Map"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
try{
	
	
	String Email=request.getParameter("l-email");
	
	String Passwode=request.getParameter("l-pass");
	
	
/*
	String plaintext = getPlaintextFromHash();

    if (plaintext != null) {
        System.out.println("Plaintext: " + plaintext);
    } else {
        System.out.println("No matching plaintext found.");
    }
   	
*/
	
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/snagway","root","");
	
	
	String q="select * from user where email='"+Email+"' AND passcode='"+Passwode+"'";
	
	PreparedStatement psmt=conn.prepareStatement(q);
	
	ResultSet rs=psmt.executeQuery();
	
/* 	String Email =(String)session.getAttribute("u-email"); */

	session.setAttribute("sesh",Email);

	while(rs.next())
	{
		if(rs.getString("email").equals(Email) && rs.getString("passcode").equals(Passwode) && rs.getString("role").equals("ADMIN"))
		{
			response.sendRedirect("admin.jsp");
		}
		else if(rs.getString("email").equals(Email) && rs.getString("passcode").equals(Passwode) && rs.getString("role").equals("USER"))
		{
			response.sendRedirect("index.jsp");
		}
	}
%>

	<script>alert("Invalid Username or Password");window.location.href="login.jsp";</script>
<%
}	
catch(Exception e){
	out.println(e);
}

	
%>





</body>
</html>