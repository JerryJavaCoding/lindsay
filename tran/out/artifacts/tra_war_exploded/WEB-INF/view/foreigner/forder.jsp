<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML>
<html>
<base href="${CONTEXT_PATH}/"/>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Add Order</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />
  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Themify Icons-->
	<link rel="stylesheet" href="css/themify-icons.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/info.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>

	<script src="js/respond.min.js"></script>


	</head>
	<body>
		
	<div class="gtco-loader"></div>
	
	<div id="page">

	
	<div class="page-inner">
	<nav class="gtco-nav" role="navigation">
		<div class="gtco-container">
			
			<div class="row">
				<div class="col-sm-4 col-xs-12">
					<div id="gtco-logo"><a href="#">Glorater <em>.</em></a></div>
				</div>
				<div class="col-xs-8 text-right menu-1">
					<ul>
						<li class="has-dropdown">
							<a>Transaction Management</a>
							<ul class="dropdown">
								<li><a href="/foreigner/selectorder/${sessionScope.foreigner.Id}">My Order</a></li>
								<li><a href="/foreigner/gotoforder">Order Releasing</a></li>
							</ul>
						</li>
                        <li class="has-dropdown">
							<a>User Security</a>
							<ul class="dropdown">
								<li><a href="/foreigner/gotoinfo/${sessionScope.foreigner.Id}">About Me</a></li>
								<li><a href="/foreigner/updatefpwd/${sessionScope.foreigner.Id}">Security Account</a></li>
							</ul>
						</li>
                        <li class="has-dropdown ">
							<a>Account Center</a>
							<ul class="dropdown">
								<li><a href="/foreigner/dofvoucher">My Voucher</a></li>
								<li><a href="#">Credit Rating</a></li>
							</ul>
						</li>
						<li class="btn-cta"><a href="/gotologin"><span>Quit</span></a></li>
					</ul>
				</div>
			</div>
			
		</div>
	</nav>
	
	<header id="gtco-header" class="gtco-cover" role="banner" style="background-image: url(/images/timg.jpg)">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-left">
					<div class="row row-mt-15em">
						<div class="col-md-10 col-md-push-1 animate-box" data-animate-effect="fadeInRight">
							<div class="form-wrap">
								<div class="tab">
									<div class="tab-content">
										<div class="tab-content-inner active" data-content="signup">
											<form action="/foreigner/addorder/${foreigner.Id}">
												<div class="col-md-12">
													<label for="foreignerid">User Id</label>
													<input type="text" class="form-control" id="foreignerid" name="foreigner.Id" readonly value="${foreigner.Id}">
												</div>

												<div class= "col-md-12">
                                                    <label for="date">Date of working</label>
                                                    <input type="date" class="form-control" id="date"  name="forder.date">
                                             	 </div>
                                                <div class="col-md-12">
                                                    <label for="work">Work</label>
                                                    <input type="text" placeholder="the summary of the work" class="form-control" id="work" name="forder.work" >
                                                </div>	
                                                 <div class="col-md-12">
                                                    <label for="description">Description</label>
                                                    <textarea id="description" placeholder="the description of the work" name="forder.description"></textarea>
                                                </div>	
                                                 <div class="col-md-12">
                                                    <label for="request">Request</label>
                                                    <input type="text" placeholder="the request about the work or language" class="form-control" id="request" name="forder.request" >
                                                </div>	
                                                 <div class="col-md-12">
                                                    <label for="language">Language</label>
                                                    <input type="text" placeholder="language you want for" class="form-control" id="language" name="forder.language" >
                                                </div>	
                                                 <div class="col-md-12">
                                                    <label for="salary">Salary</label>
                                                    <input type="text" placeholder="e.g.:$200/d" class="form-control" id="salary" name="forder.salary">
                                                </div>	
                                                	
                                                <div class="col-md-12 mgt10">
                               					 <div class="col-md-6"><input type="submit" class="btn btn-primary" value="OK"></div>
                                                </div>
											</form>

										</div>


									</div>
								</div>
							</div>
						</div>
					</div>
							
					
				</div>
			</div>
		</div>
	</header>
	
	
						<span class="icon">
					<i class="ti-announcement"></i></span></div>
	</div>
	
	</div>

	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
		<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	
<script src="js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="js/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>

	<!-- jQuery -->
    <script src="js/index.js"></script>
    <script src="js/jquery-ui.js"></script>

	</body>
</html>

