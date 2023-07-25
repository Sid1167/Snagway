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
	                        	
	                        	String email=request.getParameter("Email");
	                        	
	                        	Class.forName("com.mysql.cj.jdbc.Driver");
	                        	
	                        	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/snagway","root","");
	                        	
	                        	String q="insert into emails(email) values('"+email+"')";
	
	                        	PreparedStatement ps=con.prepareStatement(q);
	                        	
	                        	ps.executeUpdate();
	                        	
	                        %>
	                    		<script>window.location.href="index.jsp";</script>
	                    	<%
	                        	
	                        }
	                        catch(Exception e){
	                        	out.println(e);
	                        }
                        %>
</body>
</html>