<%--
  Created by IntelliJ IDEA.
  User: 宋琳琳
  Date: 2017/3/7 0007
  Time: 13:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<html>
<base href="${CONTEXT_PATH}/"/>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Info</title>
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
          <div class="col-xs-8 text-right menu-1">
            <ul>
              <li class="has-dropdown">
                <a>Transaction Management</a>
                <ul class="dropdown">
                  <c:forEach var="foreigner" items="${requestScope.foreigners}">
                  <li><a href="/foreigner/selectorder/${foreigner.Id}">My Order</a></li>
                    </c:forEach>
                  <li><a href="/foreigner/gotoforder">Order Releasing</a></li>
                </ul>
              </li>
              <li class="has-dropdown">
                <a>User Security</a>
                <ul class="dropdown">
                  <li><a href="/foreigner/gotoinfo/${foreigner.Id}">About Me</a></li>
                  <li><a href="/foreigner/updatefpwd/${foreigner.Id}">Security Account</a></li>
                </ul>
              </li>
              <li class="has-dropdown ">
                <a>Account Center</a>
                <ul class="dropdown">
                    <li><a href="/foreigner/dofvoucher/${foreigner.Id}">My Voucher</a></li>
                  <li><a href="#">Credit Rating</a></li>
                </ul>
              </li>
              <li class="btn-cta"><a href="/gotologin"><span>Quit</span></a></li>
            </ul>

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
              <div class="col-md-10 col-md-push-1 animate-box" data-animate-effect="fadeInRight">
                <div class="form-wrap">
                  <div class="tab">
                    <div class="tab-content">
                      <div class="tab-content-inner active" data-content="signup">
                        <c:forEach var="foreigner" items="${requestScope.foreigners}">
                        <form action="/foreigner/dofupdate/${foreigner.Id}" method="post">
                          <div class="col-md-12">
                            <label for="userid">User Id</label>
                            <input type="text" class="form-control" id="userid" disabled value="${foreigner.Id}">
                          </div>
                            <div class="col-md-12">
                              <label for="username">Username</label>
                              <input type="text" class="form-control" id="username" disabled value="${foreigner.fname}">
                            </div>
                            <div class="col-md-12">
                              <label for="passportid">Passport Id.</label>
                              <input type="text" class="form-control" id="passportid" disabled  value="${foreigner.fpassportid}">
                            </div>
                            <div class="col-md-12">
                              <label for="sex">Gender</label>
                              <input type="text" class="form-control" id="sex" disabled  value="${foreigner.fsex}">
                            </div>
                            <div class="col-md-12">
                              <label for="age">Age</label>
                              <input type="text" class="form-control" id="age" disabled  value="${foreigner.fage}">
                            </div>
                            <div class="col-md-12">
                              <label for="tel">Tel</label>
                              <input type="text" class="form-control" id="tel" disabled  value="${foreigner.ftel}">
                            </div>
                            <div class="col-md-12">
                              <label for="email">E-mail</label>
                              <input type="text" class="form-control" id="email" disabled  value="${foreigner.femail}">
                            </div>
                            <div class="col-md-12">
                              <label for="country">Country</label>
                              <input type="text" class="form-control" id="country" disabled  value="${foreigner.fcountry}">
                            </div>


                            <div class="col-md-12 mgt10">
                              <div class="col-md-6 col-xs-6"><input type="submit" class="btn btn-primary" value="修改"></div>

                            </div>
                          </c:forEach>
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

