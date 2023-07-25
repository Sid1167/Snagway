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
		
		
		String ID = request.getParameter("id");
		
		
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/snagway","root","");
		
		String q = "select * from products where id = '"+ID+"'";
    	
		PreparedStatement psmt = con.prepareStatement(q);
    	
		ResultSet rs = psmt.executeQuery();	
		
		
		String atc_name = "";
		String atc_image = "";
		double atc_price = 0.00;
		String atc_type = "";
		String atc_sex = "";
		
		int atc_quantity = 1;
		
		String cur_user_email = (String)session.getAttribute("sesh");
		
		String UserEmail = cur_user_email; 
		
		
		if (UserEmail != null){

			if (rs.next()) {
				atc_name = rs.getString("name");
				atc_image = rs.getString("img");
				atc_price = rs.getDouble("price");
				atc_type = rs.getString("type");
				atc_sex = rs.getString("sex");	
			}	
			String q1="insert into cart(name,img,price,type,sex,quantity,user) values('"+atc_name+"','"+atc_image+"','"+atc_price+"','"+atc_type+"','"+atc_sex+"','"+atc_quantity+"','"+UserEmail+"')";

			PreparedStatement ps = con.prepareStatement(q1);

			ps.executeUpdate();
			%>
				<script>window.location.href="cart.jsp";</script>
			<%
			
			
		}
		else{
			

			%>
				<script>alert("Login to Proceed");window.location.href="index.jsp";</script>
			<%
			
			
		}
		
	
		
	}
	catch(Exception e){
		out.println(e);
	}

%>

</body>
</html>