<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
    
<!DOCTYPE html>
<html
  lang="en"
  class="light-style layout-menu-fixed"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="./assets/"
  data-template="vertical-menu-template-free"
>
  <head>
    <meta charset="ISO-8859-1" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
    />

    <title>Update Products</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="./images/logo/logo-white.png" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
      rel="stylesheet"
    />

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="./assets/vendor/fonts/boxicons.css" />
    
    <link rel="stylesheet" href="./css/upload.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="./assets/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="./assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="./assets/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="./assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

    <link rel="stylesheet" href="./assets/vendor/libs/apex-charts/apex-charts.css" />

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="./assets/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="./assets/js/config.js"></script>
    
    <style>
    
    	.radio-inputs {
		  position: relative;
		  display: flex;
		  flex-wrap: wrap;
		  border-radius: 0.9rem;
		  background-color: #EEE;
		  box-sizing: border-box;
		  box-shadow: 0 0 0px 1px rgba(0, 0, 0, 0.06);
		  padding: 0.25rem;
		  width: 300px;
		  font-size: 14px;
		}
		
		.radio-inputs .radio {
		  flex: 1 1 auto;
		  text-align: center;
		}
		
		.radio-inputs .radio input {
		  display: none;
		}
		
		.radio-inputs .radio .name {
		  display: flex;
		  cursor: pointer;
		  align-items: center;
		  justify-content: center;
		  border-radius: 0.9rem;
		  border: none;
		  padding: .5rem 0;
		  color: rgba(51, 65, 85, 1);
		  transition: all .15s ease-in-out;
		}
		
		.radio-inputs .radio input:checked + .name {
		  background-color: #fff;
		  font-weight: 600;
		}
		
		.radio-inputs1 {
		  position: relative;
		  display: flex;
		  flex-wrap: wrap;
		  border-radius: 0.9rem;
		  background-color: #EEE;
		  box-sizing: border-box;
		  box-shadow: 0 0 0px 1px rgba(0, 0, 0, 0.06);
		  padding: 0.25rem;
		  width: 70%;
		  font-size: 14px;
		}
		
		.radio-inputs1 .radio {
		  flex: 1 1 auto;
		  text-align: center;
		}
		
		.radio-inputs1 .radio input {
		  display: none;
		}
		
		.radio-inputs1 .radio .name {
		  display: flex;
		  cursor: pointer;
		  align-items: center;
		  justify-content: center;
		  border-radius: 0.9rem;
		  border: none;
		  padding: .5rem 0;
		  color: rgba(51, 65, 85, 1);
		  transition: all .15s ease-in-out;
		}
		
		.radio-inputs1 .radio input:checked + .name {
		  background-color: #fff;
		  font-weight: 600;
		}
		
		
    
    </style>
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
         
         
         		<div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="fw-bold py-3 mb-4">Update Product</h4>
                <!-- Basic Layout -->
              <div class="row">
                <div class="col-xl">
                  <div class="card mb-4">
                    <div class="card-body">
                      
                      <form method="post" action="Update_Product" enctype="multipart/form-data">
                      
                      	<%
						try{
                    		
                    		Class.forName("com.mysql.cj.jdbc.Driver");
                    		
                    		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/snagway","root","");
                    		
                    		String ID = request.getParameter("id");
                    		
                    		String q = "select * from products where id = '"+ID+"'";
                    	
                    		PreparedStatement psmt=con.prepareStatement(q);
                    	
                    		ResultSet rs = psmt.executeQuery();	
						
                    		while (rs.next()){

                      	%>
                      	
                      		<div class="mb-3">
	                          <label class="form-label" for="basic-default-fullname">Id</label>
	                          <input type="number" class="form-control" id="basic-default-fullname" value="<%= rs.getInt("id") %>" disabled />
	                        </div>
                      	
                      		<div class="mb-3">
	                          <label class="form-label" for="basic-default-fullname">Name</label>
	                          <input type="text" class="form-control" id="basic-default-fullname" value="<%= rs.getString("name") %>" name="sup-name"  />
	                        </div>

							 <label class="form-label" for="basic-default-fullname">Image</label>
							 <center>
							 	<img src="data:image/*;base64,<%= rs.getString("img") %>" alt="Image" height="60px" />
							 </center>
							 
		   					    <label for="file-input" class="drop-container">
								  <span class="drop-title">Drop image here</span>
								  or
								  <input type="file" accept="image/*" name="sup-img" value="<%= rs.getString("img") %>" id="file-input">
								</label>
							
							<div class="mb-3">
	                          <label class="form-label" for="basic-default-fullname">Description</label>
	                          <input type="text" class="form-control" id="basic-default-fullname" value="<%= rs.getString("description") %>" name="sup-description"  />
	                        </div>
	                        
	                        <div class="mb-3">
	                          <label class="form-label" for="basic-default-fullname">Price</label>
	                          <input type="text" class="form-control" id="basic-default-fullname" value="<%= rs.getString("price") %>" name="sup-price" />
	                        </div>
	                        
	                        <label class="form-label" for="basic-default-fullname">Type</label> 
	                        <div class="mb-3">
	                          <input type="text" class="form-control" id="basic-default-fullname" value="<%= rs.getString("type") %>" disabled />
	                        </div>
	                        <div class="mb-3 radio-inputs1" >
							  <label class="radio">
							    <input type="radio" value="HOODIE" name="sup-type">
							    <span class="name">Hoodie</span>
							  </label>
							  
							  <label class="radio">
							    <input type="radio" value="CROP HOODIE" name="sup-type">
							    <span class="name">Crop Hoodie</span>
							  </label>
							      
							  <label class="radio">
							    <input type="radio" value="CROPTOP" name="sup-type">
							    <span class="name">Croptop</span>
							  </label>
							  
							  <label class="radio">
							    <input type="radio" value="SWEATSHIRT" name="sup-type">
							    <span class="name">Sweatshirt</span>
							  </label>
							      
							  <label class="radio">
							    <input type="radio" value="TSHIRT" name="sup-type">
							    <span class="name">Tshirt</span>
							  </label>
							  
							   <label class="radio">
							    <input type="radio" value="OVERSIZED" name="sup-type">
							    <span class="name">Oversized</span>
							  </label>
							</div>
							
							<label class="form-label" for="basic-default-fullname">Sex</label>
							<div class="mb-3">
	                          <input type="text" class="form-control" id="basic-default-fullname" value="<%= rs.getString("sex") %>" disabled />
	                        </div> 
	                        <div class="mb-3 radio-inputs" >
							  <label class="radio">
							    <input type="radio" value="MALE" name="sup-sex">
							    <span class="name">Male</span>
							  </label>
							  
							  <label class="radio">
							    <input type="radio" value="FEMALE" name="sup-sex">
							    <span class="name">Female</span>
							  </label>
							      
							  <label class="radio">
							    <input type="radio" value="UNISEX" name="sup-sex">
							    <span class="name">Unisex</span>
							  </label>
							</div>
                      	
                      	<%}
						%>
                        <button type="submit" class="btn btn-primary">Save</button>
                        <%
                        /* System.out.println(ID); */
                        session.setAttribute("product-id",ID);
						}
                      	catch(Exception e){
                      		out.println(e);
                      	}
                      	%>
                      </form>
                      
                    </div>
                  </div>
                </div>
              </div>
            </div>
                

            <%@ include file="admin-footer.jsp" %>

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
    <script src="./assets/vendor/libs/apex-charts/apexcharts.js"></script>

    <!-- Main JS -->
    <script src="./assets/js/main.js"></script>

    <!-- Page JS -->
    <script src="./assets/js/dashboards-analytics.js"></script>

  </body>
</html>
    