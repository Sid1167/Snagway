<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" import="java.security.MessageDigest"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

try{
	String Name=request.getParameter("r-name");
	
	String Username=request.getParameter("r-username");
	
	String Email=request.getParameter("r-mail");
	
	String Passcode=request.getParameter("r-pass");
	
	String Role="USER";
	 
/*     String encryptedpassword = null; */  
    
    /* MessageDigest instance for MD5. */  
    /* MessageDigest m = MessageDigest.getInstance("MD5");  */ 
      
    /* Add plain-text password bytes to digest using MD5 update() method. */  
    /* m.update(Passcode.getBytes()); */  
    		
    /* Convert the hash value into bytes */   
    /* byte[] bytes = m.digest(); */ 
    
    /* The bytes array has bytes in decimal form. Converting it into hexadecimal format. */  
    /* StringBuilder s = new StringBuilder();  
    for(int i=0; i< bytes.length ;i++)  
    {  
        s.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));  
    } */  
      
    /* Complete hashed password in hexadecimal format */  
    /* encryptedpassword = s.toString();  */ 
    
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/snagway","root","");
	
	String q = "select * from user where email = '"+Email+"'";
	
	PreparedStatement psmt=con.prepareStatement(q);
	
	ResultSet rs = psmt.executeQuery();
	
	if (rs.next()){
		%>
		<script>alert("Same Email Existing");window.location.href="register.jsp";</script>
		<%
	}
	else{
		String q1="insert into user(name,username,email,passcode,role) values('"+Name+"','"+Username+"','"+Email+"','"+Passcode+"','"+Role+"')";

		PreparedStatement ps=con.prepareStatement(q1);
		
		ps.executeUpdate();
		
		session.setAttribute("u-email",Email);
	%>
		<script>window.location.href="login.jsp";</script>
	<%
	}

	
}
catch(Exception e){
	out.println(e);
}

%>



</body>
</html>