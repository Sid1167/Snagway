<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Details</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="ISO-8859-1" />
    <meta name="keywords" content="Bootie Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    
    <!-- //Meta tag Keywords -->

    <!-- Custom-Files -->
    <link rel="stylesheet" href="css/bootstrap.css">
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

</head>

<body>

    <!-- mian-content -->
    <div class="main-banner inner" id="home">
        <!-- header -->
     <%	
    	session.getAttribute("sesh");
    	
        if (session != null) {%>        
			<%@ include file="navbar.jsp" %>
    	<%} 
        else if (session == null) {%>
        	<%@ include file="logout-navbar.jsp" %>
        <%} %>	

    </div>
    <!--//main-content-->
    <!---->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="index.html">Home</a>
        </li>
        <li class="breadcrumb-item active">Shop Single</li>
    </ol>
    <!---->
    <!-- banner -->

    <section class="ab-info-main py-md-5 py-4">
        <div class="container py-md-3">
            <!-- top Products -->
            <div class="row">
                <!-- product right -->
                <div class="left-ads-display col-lg-8">
                    <div class="row">
                        <div class="desc1-left col-md-6">
                            <img src="images/d1.jpg" class="img-fluid" alt="">
                        </div>
                        <div class="desc1-right col-md-6 pl-lg-4">
                            <h3>Lorem ipsum dolor sit amet laoret.</h3>
                            <h5>Rs. 499 <span>599</span> <a href="#">click for offer</a></h5>
                            <div class="available mt-3">
                                <form action="#" method="post" class="w3layouts-newsletter">
                                    <input type="email" name="Email" placeholder="Enter your email..." required="">
                                    <button class="btn1">Check</button>

                                </form>
                                <span><a href="#">login to save in wishlist </a></span>
                                <p>Lorem Ipsum has been the industry's standard since the 1500s. Praesent ullamcorper dui turpis.. </p>
                            </div>
                            <div class="share-desc">
                                <div class="share">
                                    <h4>Share Product :</h4>
                                    <ul class="w3layouts_social_list list-unstyled">
                                        <li>
                                            <a href="#" class="w3pvt_facebook">
                                                <span class="fa fa-facebook-f"></span>
                                            </a>
                                        </li>
                                        <li class="mx-2">
                                            <a href="#" class="w3pvt_twitter">
                                                <span class="fa fa-twitter"></span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="w3pvt_dribble">
                                                <span class="fa fa-dribbble"></span>
                                            </a>
                                        </li>
                                        <li class="ml-2">
                                            <a href="#" class="w3pvt_google">
                                                <span class="fa fa-google-plus"></span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //contact -->
   <%@ include file="footer.jsp" %>
</body>

</html>
