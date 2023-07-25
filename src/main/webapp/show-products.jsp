<%@page import="com.mysql.cj.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" import="java.security.MessageDigest"%>
<!DOCTYPE html>

<html
  lang="en"
  class="light-style layout-menu-fixed"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="../assets/"
  data-template="vertical-menu-template-free"
>
  <head>
    <meta charset="ISO-8859-1" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
    />

    <title>All Products</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="../assets/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
      rel="stylesheet"
    />

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="./assets/vendor/fonts/boxicons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="./assets/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="./assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="./assets/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="./assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="./assets/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="./assets/js/config.js"></script>
    <script src="./assets/js/onmouseenter.js"></script>
  </head>

  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar"> 
      <div class="layout-container">
		<%@ include file="admin-menu.jsp"%>

        <!-- Layout container -->
        <div class="layout-page">
          
			<%@ include file="admin-navbar.jsp" %>

          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Product/</span>All Products</h4>
                <!-- Basic Layout -->
              <div class="row">
                <div class="col-xl">
                  <div class="card mb-4">
                    <div class="card-body">
                      
                    <%
                    	try{
                    		
                    		Class.forName("com.mysql.cj.jdbc.Driver");
                    		
                    		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/snagway","root","");
                    	
                    		String q = "select * from products";
                    	
                    		PreparedStatement psmt=con.prepareStatement(q);
                    	
                    		ResultSet rs = psmt.executeQuery();
                    		
                    		
                    		%>
                    		<table class="table">
	  						  <caption>List of Products</caption>
	  						  <thead>
	  						    <tr>
	  						      <th scope="col">Id</th>
	  						      <th scope="col">Image</th>
	  						      <th scope="col">Name</th>
	  						      <th scope="col">Description</th>
	  						      <th scope="col">Price</th>
	  						      <th scope="col">Type</th>
	  						      <th scope="col">Sex</th>
	  						      <th scope="col">Action</th>
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
	  							pr_description = rs.getString("description");
	  							pr_price = rs.getString("price");
	  							pr_type = rs.getString("type");
	  							pr_sex = rs.getString("sex");
  						  %>
  						  <tbody>
  						    <tr>
  						      <th scope="row"><%=pr_id %></th>
  						      
  						      <td>
									<img src="data:image/*;base64,<%= pr_image %>" alt="Image" height="50px" />
							  </td>
  						      <td><%=pr_name %></td>
  						      <td><%=pr_description %></td>
  						      <td><%=pr_price %></td>
  						      <td><%=pr_type %></td>
  						      <td><%=pr_sex %></td>
  						      
  						      <td>
  						      	<a href="update-product.jsp?id=<%=pr_id%>" ><button type="button" class="btn btn-warning">Update</button></a>
  						      	
  						      	<a href="delete-product.jsp?id=<%=pr_id%>"><button type="button" class="btn btn-danger">Delete</button></a>
  						      	
  						      </td>
  						    </tr> 
  						  </tbody>
  						  
  						  
  						
  						
                    	<%	
                    	
                    	
                    	/* session.setAttribute("PR-ID",pr_id); */
	  					}
  					}
                    	catch(Exception e){
                    		
                    	}
                    %>  
                      	
                      
                      
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- / Content -->

            

            <div class="content-backdrop fade"></div>
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>
    </div>
    <!-- / Layout wrapper -->


    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="./assets/vendor/libs/jquery/jquery.js"></script>
    <script src="./assets/vendor/libs/popper/popper.js"></script>
    <script src="./assets/vendor/js/bootstrap.js"></script>
    <script src="./assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="./assets/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->

    <!-- Main JS -->
    <script src="./assets/js/main.js"></script>

    <!-- Page JS -->


  </body>
</html>
