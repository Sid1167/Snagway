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
	try{
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/snagway","root","");
		
		String ID = request.getParameter("id");
		
		String q = "delete from cart where id = '"+ID+"'";
	
		PreparedStatement ps=con.prepareStatement(q);
		
		ps.executeUpdate();
		
		%>
			<script>window.location.href="cart.jsp";</script>
		<%
	}
	catch(Exception e){
		
		out.println(e);
	
	}
%>


	
</body>
</html>