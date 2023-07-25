<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Shop</title>
<!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="ISO-8859-1" />
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    
    
    <!-- //Meta tag Keywords -->

    <!-- Custom-Files -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/addtocart.css">
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <!-- Style-CSS -->
    <!-- font-awesome-icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome-icons -->
    <!-- Fonts -->
    <link href="//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900" rel="stylesheet">
    <!-- //Fonts -->
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style>
    /* CSS Reset */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    
    body {
      font-family: Arial, sans-serif;
      background-color: #fff;
    }
    
    .container {
      max-width: 1200px;
      margin: 0 auto;
      padding: 20px;
    }
    
    h1 {
      color: #333;
      text-align: center;
      margin-bottom: 20px;
    }
    
    .product-list {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
      gap: 20px;
    }
    
    .product {
      background-color: #f5f5f5;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }
    
    .product img {
      width: 100%;
      height: auto;
      margin-bottom: 10px;
    }
    
    .product h2 {
      font-size: 18px;
      color: #333;
      margin-bottom: 10px;
    }
    
    .product p {
      color: #666;
      margin-bottom: 10px;
    }
    
    .product .price {
      color: #FF4C4C;
      font-weight: bold;
      font-size: 16px;
    }
    
    @media (max-width: 767px) {
      .container {
        padding: 10px;
      }
      
      .product-list {
        grid-template-columns: 1fr;
      }
    }
/* 
    
    .options {
      display: flex;
      flex-direction: column;
    }
    
    .option {
      padding: 10px;
      margin-bottom: 10px;
      background-color: #f5f5f5;
      border-radius: 5px;
      transition: background-color 0.3s ease;
    }
    
    .option:hover {
      background-color: #ffa500;
    }
    
    .option a {
      color: #333;
      text-decoration: none;
    }
    
    @media (max-width: 767px) {
      .container {
        padding: 10px;
      }
    }
 */  </style>

</head>
<body>
	<div class="main-banner innershop" id="home">
		<%	
    	String s = (String)session.getAttribute("sesh");
        if (s == null) {
        	
        	/* System.out.println(s); */
        %>        
			<%@ include file="navbar.jsp" %>
    	<%} 
        else if (s != null) {%>
        	<%@ include file="logout-navbar.jsp" %>
        <%} 
        	
        %>	
	        
	</div>
	<div class="container" style="display:flex-center;">
		<h3 class="tittle text-center">SHOP</h3>
		<ul class="nav justify-content-center">
		  <li class="nav-item">
		    <a class="nav-link" href="#">Hoodie</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="#">Crop Hoodie</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="#">Croptop</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="#">Sweatshirt</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="#">Tshirt</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="#">Oversized</a>
		  </li>
		</ul>
	</div>	
		<!-- <section>
	        <div class="container">
			    <div class="options">
			      <div class="option">
			        <a href="#">Option 1</a>
			      </div>
			      <div class="option">
			        <a href="#">Option 2</a>
			      </div>
			      <div class="option">
			        <a href="#">Option 3</a>
			      </div>
			      Add more options here
			    </div>
			</div>
    	</section> -->
    	<%
    		
    	try {

			// Prepare the database connection
			Class.forName("com.mysql.cj.jdbc.Driver");
						
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/snagway","root","");
						
			String q="Select * from products";
				
			PreparedStatement ps=con.prepareStatement(q);
						
			ResultSet rs = ps.executeQuery();
		%>
		<div class="container">
	    	<div class="product-list">
		<%
			while(rs.next()){
				
				String p_name, p_image, p_desc, p_price;
				int p_id;
				
				/* Fetching data from Database column name and storing it in Variables */
				
				
				p_id = rs.getInt("id");
				p_name = rs.getString("name");
				p_image = rs.getString("img");
				p_desc = rs.getString("description");
				p_price = rs.getString("price");
				
				
		%>
		
		<div class="product">
	        <a href="productdetails.jsp?id=<%=p_id%>"><img src="data:image/*;base64,<%= p_image %>" alt="Image" />
	        <h2><%= p_name %></h2>
	        <!-- <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p> -->
	        <p class="price"> <%= p_price%>&nbsp;INR</p>
	        <center>
	        	<a href="Add-To-Cart.jsp?id=<%=p_id%>"><button class="custom-btn btn-16"><span>Add To Cart</span></button></a>
	        </center>
	        </a>
	    </div>
		<%		
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
    	
    	%>
	    </div>
	  </div>


	<%@ include file="footer.jsp" %>
</body>
</html>