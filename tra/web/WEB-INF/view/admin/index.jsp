<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<base href="${CONTEXT_PATH}/"/>
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
	<link rel="stylesheet" href="/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="/css/icomoon.css">
	<!-- Themify Icons-->
	<link rel="stylesheet" href="/css/themify-icons.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="/css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="./css/owl.carousel.min.css">
	<link rel="stylesheet" href="./css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="./css/style.css">

	<!-- Modernizr JS -->
	<script src="./js/modernizr-2.6.2.min.js"></script>

	<script src="./js/respond.min.js"></script>


	</head>
	<body>

	<div class="gtco-loader"></div>
	
	<div id="page">

	
	<div class="page-inner">
	<nav class="gtco-nav" role="navigation">
		<div class="gtco-container">
			
			<div class="row">
				<div class="col-sm-4 col-xs-12">
					<div id="gtco-logo"><a href="/admin/gotologin">Glorater <em>.</em></a></div>
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

                                                <div class="col-md-12">
                                                    <div class="col-md-6">
                                                     <input type="radio" name="user" id="inter" checked>Interpreter
                                                      </div>
                                                    <div class="col-md-6">
                                                     <input type="radio"  name="user" id="fore">Foreigner
                                                   </div>
                                                    </div>

                                                <div class="inter">
                                                    <form action="/admin/dotregister" method="post">
                                                        <div class="col-md-12">
                                                        <label for="tname">Username</label>
                                                        <input type="text" class="form-control" id="tname" name="translator.tname">
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label for="tpwd">Password</label>
                                                        <input type="password" class="form-control" id="tpwd" name="translator.tpwd">
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label for="tpwd2">Repeat Password</label>
                                                        <input type="password" class="form-control" id="tpwd2">
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label for="tidno">ID No.</label>
                                                        <input type="text" class="form-control" id="tidno" name="translator.tidno">
                                                    </div>
                                                     <div class="col-md-12">
                                                        <label for="tsex">Gender</label>
                                                        <input type="text" class="form-control" id="tsex" name="translator.tsex">
                                                    </div>
                                                     <div class="col-md-12">
                                                        <label for="tage">Age</label>
                                                        <input type="text" class="form-control" id="tage" name="translator.tage">
                                                    </div>
                                                     <div class="col-md-12">
                                                        <label for="tel">Tel</label>
                                                        <input type="text" class="form-control" id="tel" name="translator.tel">
                                                    </div>
                                                     <div class="col-md-12">
                                                        <label for="temail">E-mail</label>
                                                        <input type="text" class="form-control" id="temail" name="translator.temail">
                                                    </div>
                                                     <div class="col-md-12">
                                                        <label for="tlanguage">Language</label>
                                                        <input type="text" class="form-control" id="tlanguage" name="translator.tlanguage">
                                                    </div>
                                                     <div class="col-md-12">
                                                        <label for="cname">Certificate Name</label>
                                                        <input type="text" class="form-control" id="cname" name="certificate.cname">
                                                    </div>
                                                     <div class="col-md-12">
                                                        <label for="cpic">Certificate Image</label>
  													   <input type="file" id="cpic" name="certificate.cpic">
                                                    </div>
                                                    <div class="col-md-12 mgt10" >
                                                        <input type="submit" class="btn btn-primary" value="Sign up">
                                                    </div>
                                             </form>
                                                </div>




                                                    <div class="fore" style="display:none;">

                                                        <form action="/admin/dofregister" method="post">
                                                    <div class="col-md-12">
                                                        <label for="fname">Username</label>
                                                        <input type="text" class="form-control" id="fname" name="foreigner.fname">
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label for="fpwd">Password</label>
                                                        <input type="password" class="form-control" id="fpwd" name="foreigner.fpwd">
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label for="fpwd2">Repeat Password</label>
                                                        <input type="password" class="form-control" id="fpwd2">
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label for="fpassportid">Passport ID.</label>
                                                        <input type="text" class="form-control" id="fpassportid" name="foreigner.fpassportid">
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label for="fsex">Gender</label>
                                                        <input type="text" class="form-control" id="fsex" name="foreigner.fsex">
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label for="fage">Age</label>
                                                        <input type="text" class="form-control" id="fage" name="foreigner.fage">
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label for="fcountry">Country</label>
                                                        <input type="text" class="form-control" id="fcountry" name="foreigner.fcountry">
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label for="ftel">Tel</label>
                                                        <input type="text" class="form-control" id="ftel" name="foreigner.ftel">
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label for="femail">E-mail</label>
                                                        <input type="text" class="form-control" id="femail" name="foreigner.femail">
                                                    </div>

                                                <div class="col-md-12 mgt10" >
                                                        <input type="submit" class="btn btn-primary" value="Sign up">
                                                 </div>

                                                        </form>

										        </div>
                                        </div>

                                        <div class="tab-content-inner" data-content="login">
                                            <form action="/admin/tologin" method="post">
                                            	 <div class="col-md-12">
                                                    <div class="col-md-6">
                                                     <input type="radio" name="person" id="interpret" value="Interpreter"checked>Interpreter
                                                      </div>
                                                    <div class="col-md-6">
                                                        <input type="radio"  name="person" id="foreigner " value="Foreigner">Foreigner
                                                    </div>
                                                </div>
                                                 <div class="col-md-12">
                                                  <div class="col-md-8">
                                                     <input type="radio"  name="person" id="admin " value="Administrator">Administrator
                                                      </div>
                                                  </div>
                                                <div class="col-md-12">
                                                    <label for="username">Username</label>
                                                    <input type="text" class="form-control" name="name" id="username">
                                                </div>
                                                <div class="col-md-12">
                                                    <label for="password">Password</label>
                                                    <input type="password" class="form-control" name="password"id="password">
                                                </div>
                                                <div class="col-md-12 mgt10">
                                                    <button type="submit" class="btn btn-primary" value="">Login</button>
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

