<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>

<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Snagway</title>
    
    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="./images/logo/logo-white.png" />
    
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="ISO-8859-1" />
        <!-- <script>
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script> -->
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
    <!-- /Fonts -->
    <link href="//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900" rel="stylesheet">
    <!-- //Fonts -->
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

    <!-- mian-content -->
    <div class="main-banner" id="home">
    
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

    
    <%-- <%
    	boolean loggedIn;
    
    	System.out.println(loggedIn = (boolean) session.getAttribute("sesh"));
    	
    	if (loggedIn) { %>
    
    		<%@ include file="navbar.jsp" %>
    
	<% 	} 
    	else { %>
	
    		<%@ include file="logout-navbar.jsp" %>
    
	<% 	}%> --%>
        
        <%-- <%@ include file="navbar.jsp" %> --%>
        <%-- <%@ include file="logout-navbar.jsp" %> --%>
        
        <!--/banner-->
        <div class="banner-info">
            <p>Trending of the week</p>
            <h3 class="mb-4">Legends Never Die Hoodie</h3>
            <div class="ban-buttons">
                <a href="item-det.jsp" class="btn">Shop Now</a>
            </div>
        </div>
        <!--// banner-inner -->

    </div>
    <!--//main-content-->
    <!--/ab -->
    <section class="about py-md-5 py-5">
        <div class="container-fluid">
            <div class="feature-grids row px-3">
                <div class="col-lg-3 gd-bottom">
                    <div class="bottom-gd row">
                        <div class="icon-gd col-md-3 text-center"><span class="fa fa-truck" aria-hidden="true"></span></div>
                        <div class="icon-gd-info col-md-9">
                            <h3 class="mb-2">FREE SHIPPING</h3>
                            <p>On all order over $2000</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 gd-bottom">
                    <div class="bottom-gd row bottom-gd2-active">
                        <div class="icon-gd col-md-3 text-center"><span class="fa fa-bullhorn" aria-hidden="true"></span></div>
                        <div class="icon-gd-info col-md-9">
                            <h3 class="mb-2">FREE RETURN</h3>
                            <p>On 1st exchange in 30 days</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 gd-bottom">
                    <div class="bottom-gd row">
                        <div class="icon-gd col-md-3 text-center"> <span class="fa fa-gift" aria-hidden="true"></span></div>

                        <div class="icon-gd-info col-md-9">
                            <h3 class="mb-2">MEMBER DISCOUNT</h3>
                            <p>Register & save up to $29%</p>
                        </div>

                    </div>
                </div>
                <div class="col-lg-3 gd-bottom">
                    <div class="bottom-gd row">
                        <div class="icon-gd col-md-3 text-center"> <span class="fa fa-usd" aria-hidden="true"></span></div>
                        <div class="icon-gd-info col-md-9">
                            <h3 class="mb-2">PREMIUM SUPPORT</h3>
                            <p>Support 24 hours per day</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //ab -->
    <!--/ab -->
    <section class="about py-5">
    <h3 class="tittle text-center">New Arrivals</h3>
        <%
    		
    	try {

			// Prepare the database connection
			Class.forName("com.mysql.cj.jdbc.Driver");
						
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/snagway","root","");
						
			String q="Select * from popular_product";
				
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
	        <a href="productdetails.jsp?id=<%=p_id%>"><img src="data:image/*;base64,<%= p_image %>" alt="Image">
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
    </section>
    <!-- //ab -->
    <!--/testimonials-->
    <section class="testimonials py-5">
        <div class="container">
            <div class="test-info text-center">
                <h3 class="my-md-2 my-3">Jenifer Burns</h3>

                <ul class="list-unstyled w3layouts-icons clients">
                    <li>
                    	<span class="fa fa-star"></span>
                    </li>
                    <li>
                        <span class="fa fa-star"></span>
                    </li>
                    <li>
                        <span class="fa fa-star"></span>
                    </li>
                    <li>
                        <span class="fa fa-star-half-o"></span>
                    </li>
                </ul>
                <p><span class="fa fa-quote-left"></span> Lorem Ipsum has been the industry's standard since the 1500s. Praesent ullamcorper dui turpis.Nulla pellentesque mi non laoreet eleifend. Integer porttitor mollisar lorem, at molestie arcu pulvinar ut. <span class="fa fa-quote-right"></span></p>

            </div>
        </div>
    </section>
    <!--//testimonials-->
    <!--/ab -->
    <section class="about py-5">
        <div class="container pb-lg-3">
            <h3 class="tittle text-center">Popular Products</h3>
            <%
    		
    	try {

			// Prepare the database connection
			Class.forName("com.mysql.cj.jdbc.Driver");
						
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/snagway","root","");
						
			String q="Select * from popular_product";
				
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
	        <a href="productdetails.jsp?id=<%=p_id%>"><img src="data:image/*;base64,<%= p_image %>" height="2%" alt="Image" />
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
        </div>
    </section>
    <!-- //ab -->
    <!-- brands -->
    <!-- <section class="brands py-5" id="brands">
        <div class="container py-lg-0">
            <div class="row text-center brand-items">
                <div class="col-sm-2 col-3">
                    <a href="#"><span class="fa fa-connectdevelop" aria-hidden="true"></span></a>
                </div>
                <div class="col-sm-2 col-3">
                    <a href="#"><span class="fa fa-empire" aria-hidden="true"></span></a>
                </div>
                <div class="col-sm-2 col-3">
                    <a href="#"><span class="fa fa-ioxhost" aria-hidden="true"></span></a>
                </div>
                <div class="col-sm-2 col-3">
                    <a href="#"><span class="fa fa-first-order" aria-hidden="true"></span></a>
                </div>
                <div class="col-sm-2 col-3 mt-sm-0 mt-4">
                    <a href="#"><span class="fa fa-joomla" aria-hidden="true"></span></a>
                </div>
                <div class="col-sm-2 col-3 mt-sm-0 mt-4">
                    <a href="#"><span class="fa fa-dropbox" aria-hidden="true"></span></a>
                </div>
            </div>
        </div>
    </section> -->
    <!-- brands -->
	
	<%@ include file="footer.jsp" %>

</body>

</html>
