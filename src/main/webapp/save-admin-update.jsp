<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String ID = (String)session.getAttribute("admin-id");
	
	String Name = request.getParameter("ar-name");
	
	String Username = request.getParameter("ar-username");
	
	String Email = request.getParameter("ar-mail");
	
	String Password = request.getParameter("ar-pass");
	
	/* System.out.println(ID);
	System.out.println(Name);
	System.out.println(Username);
	System.out.println(Email);
	System.out.println(Password); */

	try {
		

		
		Class.forName("com.mysql.cj.jdbc.Driver");
			
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/snagway","root","");
		
		String q="update user set name='"+Name+"',username='"+Username+"',email='"+Email+"',passcode='"+Password+"' where id = '"+ID+"'";

		PreparedStatement ps=con.prepareStatement(q);
		
		ps.executeUpdate();

		
	}
	catch(Exception e) {
		out.println(e);
	}
%>
	<script>window.location.href="admin.jsp";</script>
</body>
</html>