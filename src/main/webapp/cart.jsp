<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Cart</title>
<!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="ISO-8859-1" />
    <meta name="keywords" content="Bootie Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    
    <!-- //Meta tag Keywords -->

    <!-- Custom-Files -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/cart.css">
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
    
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">

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
	<!-- Cart Start -->
		
	<section class="h-100 h-custom" >
	  <div class="container py-5 h-100" >
	    <div class="row d-flex justify-content-center align-items-center h-100" >
	      <div class="col-12">
	        <div class="card card-registration card-registration-2" style="border-radius:15px;">
	          <div class="card-body p-0" style="background:;" >
	            <div class="row" style="background:;">
	              <div class="col-lg-10" >
	                  <div class="d-flex justify-content-between align-items-center mb-10 container" id="c-head" >
	                    <h1 class="fw-bold mb-0 text-black">Shopping Cart</h1>
	                    <h6 class="mb-10 text-muted"><!-- 3  -->items</h6>
	                  </div>
	                  
	                  <!-- Shopping cart table -->
	                  
	                  <div class="table-responsive" id="c-list">
	                  <%
                    	try{
                    		String cur_user = (String)session.getAttribute("sesh");
                    		
                    		Class.forName("com.mysql.cj.jdbc.Driver");
                    		
                    		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/snagway","root","");
                    	
                    		String q = "select * from cart where user = '"+cur_user+"'";
                    		
                    		/* String q = "select * from cart"; */
                    	
                    		PreparedStatement psmt=con.prepareStatement(q);
                    	
                    		ResultSet rs = psmt.executeQuery();
                    		
                    	%>
			            <table class="table">
			              <thead>
			                <tr>
			                  <th scope="col" class="border-0 bg-light">
			                    <div class="p-2 px-3 text-uppercase">Product</div>
			                  </th>
			                  <th scope="col" class="border-0 bg-light">
			                    <div class="py-2 text-uppercase">Price</div>
			                  </th>
			                  <th scope="col" class="border-0 bg-light">
			                    <div class="py-2 text-uppercase">Quantity</div>
			                  </th>
			                  <th scope="col" class="border-0 bg-light">
			                    <div class="py-2 text-uppercase">Remove</div>
			                  </th>
			                </tr>
			              </thead>
			              <%
	  						while(rs.next()){
	  							
	  							String pr_name, pr_image, pr_description, pr_price, pr_type, pr_sex;
	  							int pr_id;
	  							
	  							/* Fetching data from Database column name and storing it in Variables */
	  							
	  							pr_id = rs.getInt("id");
	  							pr_name = rs.getString("name");
	  							pr_image = rs.getString("img");
	  							
	  							pr_price = rs.getString("price");
	  							pr_type = rs.getString("type");
	  							pr_sex = rs.getString("sex");
	  						
  						  %>
			              <tbody>
			              
			                <tr>
			                  <th scope="row" class="border-0">
			                    <div class="p-2">
			                      <img src="data:image/*;base64,<%= pr_image %>" alt="Image" width="70" class="img-fluid rounded shadow-sm">
			                      <div class="ml-3 d-inline-block align-middle">
			                        <h5 class="mb-0"> <a href="#" class="text-dark d-inline-block align-middle"><%= pr_name %></a></h5><span class="text-muted font-weight-normal font-italic d-block">Category : <%= pr_type %></span>
			                        <span class="text-muted font-weight-normal font-italic d-block">Sex : <%= pr_sex %></span>
			                      </div>
			                    </div>
			                  </th>
			                  <td class="border-0 align-middle"><strong><%= pr_price %></strong></td>
			                  <td class="border-0 align-middle"><input type="number" value="1" width="20px" /></td>
			                  <td class="border-0 align-middle"><a href="Delete-Cart-Item.jsp?id=<%= pr_id %>" class="text-dark"><i class="fa fa-trash"></i></a></td>
			                </tr>
			                
			              </tbody>
			            <%
			            	}
                    	}
			            catch(Exception e){
			            	  
			            }
			            %>
			            </table>
			          </div>
			          <!-- End -->
	                  
	              </div>

						
			          

	              	<!--  -->   
	              
	              
	              
	              
	              
	              
	              <!-- Coupon & Checkout -->
	              <div class="row py-4 p-5 bg-white rounded shadow-sm" id="c-out">
			        <div class="col-lg-6">
			          <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Coupon code</div>
			          <div class="p-4">
			            <p class="font-italic mb-4">If you have a coupon code, please enter it in the box below</p>
			            <div class="input-group mb-4 border rounded-pill p-2">
			              <input type="text" placeholder="Apply coupon" aria-describedby="button-addon3" class="form-control border-0">
			              <div class="input-group-append border-0">
			                <button id="button-addon3" type="button" class="btn btn-dark px-4 rounded-pill"><i class="fa fa-gift mr-2"></i>Apply Coupon</button>
			              </div>
			            </div>
			          </div>
			          <!-- <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Instructions for seller</div>
			          <div class="p-4"> -->
			            <p class=" text-uppercase font-weight-bold mb-4">Happy Customer Happy Us</p>
			            <!-- <textarea name="" cols="30" rows="2" class="form-control"></textarea> -->
			          <!-- </div> -->
			        </div>
			        <div class="col-lg-6">
			          <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Order summary </div>
			          <div class="p-4">
			            <p class="font-italic mb-4">Shipping and additional costs are calculated based on values you have entered.</p>
			            <ul class="list-unstyled mb-4">
			              <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Order Subtotal </strong><strong>390.00 INR</strong></li>
			              <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Shipping and handling</strong><strong>10.00 INR</strong></li>
			              <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Discount</strong><strong>- 0.00 INR</strong></li>
			              <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Tax</strong><strong>0.00 INR</strong></li>
			              <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Total</strong>
			              	<h5 class="font-weight-bold">400.00 INR</h5>
			              </li>
			            </ul><a href="#" class="btn btn-dark rounded-pill py-2 btn-block">Procceed to Checkout</a>
			          </div>
			        </div>
			      </div>
			      <!--  -->
	            </div>
	          </div>
	        </div>
	      </div>
		</div>
	  </div>

	</section>
	
	<!-- Cart End -->
	<%@ include file="footer.jsp" %>
</body>
</html>