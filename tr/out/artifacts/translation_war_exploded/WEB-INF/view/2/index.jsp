<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Home</title>
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
					<div id="gtco-logo"><a href="index.html">Glorater <em>.</em></a></div>
				</div>
			</div>
			
		</div>
	</nav>
	
	<header id="gtco-header" class="gtco-cover" role="banner" style="background-image: url(images/timg.jpg)">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-left">
					

					<div class="row row-mt-15em">
						<div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
							<span class="intro-text-small">Welcome to Glorater</span>
							<h1>Find your business partner hitting your spot.</h1>	
						</div>
						<div class="col-md-4 col-md-push-1 animate-box" data-animate-effect="fadeInRight">
							<div class="form-wrap">
								<div class="tab">
									<ul class="tab-menu">
										<li class="active gtco-first"><a href="#" data-tab="signup">Sign up</a></li>
										<li class="gtco-second"><a href="#" data-tab="login">Login</a></li>
									</ul>
									<div class="tab-content">
										<div class="tab-content-inner active" data-content="signup">
											<form action="#">
                                                <div class="col-md-12">
                                                    <div class="col-md-6">
                                                     <input type="radio" name="user" id="inter" checked>Interpreter
                                                      </div>
                                                    <div class="col-md-6">
                                                     <input type="radio"  name="user" id="fore">Foreigner
                                                    </div>
                                                </div>
                                               <div class="inter">								
                                                    <div class="col-md-12">
                                                        <label for="tname">Username</label>
                                                        <input type="text" class="form-control" id="tname">
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label for="tpwd">Password</label>
                                                        <input type="password" class="form-control" id="tpwd">
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label for="tpwd2">Repeat Password</label>
                                                        <input type="text" class="form-control" id="tpwd2">
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label for="idno">ID No.</label>
                                                        <input type="text" class="form-control" id="idno">
                                                    </div>
                                                     <div class="col-md-12">
                                                        <label for="Gender">Gender</label>
                                                        <input type="text" class="form-control" id="Gender">
                                                    </div>
                                                     <div class="col-md-12">
                                                        <label for="age">Age</label>
                                                        <input type="text" class="form-control" id="age">
                                                    </div>
                                                     <div class="col-md-12">
                                                        <label for="tel">Tel</label>
                                                        <input type="text" class="form-control" id="tel">
                                                    </div>
                                                     <div class="col-md-12">
                                                        <label for="mail">E-mail</label>
                                                        <input type="text" class="form-control" id="mail">
                                                    </div>
                                                     <div class="col-md-12">
                                                        <label for="language">Language</label>
                                                        <input type="text" class="form-control" id="language">
                                                    </div>
                                                     <div class="col-md-12">
                                                        <label for="certiname">Certificate Name</label>
                                                        <input type="text" class="form-control" id="certiname">
                                                    </div>
                                                     <div class="col-md-12">
                                                        <label for="certipic">Certificate Image</label>
  													   <input type="file" id="certipic">
                                                    </div>
                                                </div>		
												<div class="fore" style="display:none;">																														
                                                    <div class="col-md-12">
                                                        <label for="fname">Username</label>
                                                        <input type="text" class="form-control" id="fname">
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label for="fpwd">Password</label>
                                                        <input type="password" class="form-control" id="fpwd">
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label for="fpwd2">Repeat Password</label>
                                                        <input type="password" class="form-control" id="fpwd2">
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label for="passportid">Passport ID.</label>
                                                        <input type="text" class="form-control" id="passportid">
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label for="fgender">Gender</label>
                                                        <input type="text" class="form-control" id="fgender">
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label for="fage">Age</label>
                                                        <input type="text" class="form-control" id="fage">
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label for="country">Country</label>
                                                        <input type="text" class="form-control" id="country">
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label for="ftel">Tel</label>
                                                        <input type="text" class="form-control" id="ftel">
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label for="fmail">E-mail</label>
                                                        <input type="text" class="form-control" id="fmail">
                                                    </div>
                                                </div>    
                                                <div class="col-md-12">
                                                        <input type="submit" class="btn btn-primary" value="Sign up">
                                                 </div>
											</form>	
										</div>

										<div class="tab-content-inner" data-content="login">
											<form action="#">
                                            	 <div class="col-md-12">
                                                    <div class="col-md-6">
                                                     <input type="radio" name="user" id="interpret" checked>Interpreter
                                                      </div>
                                                    <div class="col-md-6">
                                                     <input type="radio"  name="user" id="foreigner">Foreigner
                                                    </div>
                                                </div>
                                                 <div class="col-md-12">
                                                  <div class="col-md-8">
                                                     <input type="radio"  name="user" id="admin">Administrator
                                                      </div>
                                                    
                                                </div>
                                                <div class="col-md-12">
                                                    <label for="username">Username</label>
                                                    <input type="text" class="form-control" id="username">
                                                </div>
                                                <div class="col-md-12">
                                                    <label for="password">Password</label>
                                                    <input type="password" class="form-control" id="password">
                                                </div>
                                                <div class="col-md-12">
                                                    <input type="submit" class="btn btn-primary" value="Login">
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
   
	</body>
</html>

