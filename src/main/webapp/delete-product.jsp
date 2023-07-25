<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Product</title>
</head>
<body>
<%
try{
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/snagway","root","");
	
	String ID = request.getParameter("id");
	System.out.println(ID);
	String q = "delete from products where id = '"+ID+"'";

	PreparedStatement ps=con.prepareStatement(q);
	
	ps.executeUpdate();
	
}
catch(Exception e){
	
	out.println(e);

}
%>

	<script>window.location.href="admin.jsp";</script>
	
</body>
</html>