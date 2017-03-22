<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 宋琳琳
  Date: 2017/3/14 0014
  Time: 14:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML>
<html>  <base href="${CONTEXT_PATH}/"/>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>订单详情页</title>
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
                <a>交易管理</a>
                <ul class="dropdown">
                  <li><a href="/translator/myorder/${translator.Id}">我的订单</a></li>
                  <li><a href="/translator/business">我要接单</a></li>
                </ul>
              </li>
              <li class="has-dropdown">
                <a>用户安全</a>
                <ul class="dropdown">
                  <li><a href="/translator/gotoinfo/${sessionScope.translator.Id}">个人资料</a></li>
                  <li><a href="#">账号安全</a></li>
                </ul>
              </li>
              <li class="has-dropdown ">
                <a>账号中心</a>
                <ul class="dropdown">
                  <li><a href="/translator/dofvoucher">我的现金券</a></li>
                  <li><a href="#">信用评级</a></li>
                </ul>
              </li>
              <li class="btn-cta"><a href="#"><span>Quit</span></a></li>
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
                        <form action="/translator/dealorder" method="post">
                          <%--request作用域中就是requestScope，session的就是sessionScope--%>
                          <c:forEach var="forder" items="${requestScope.forders}">
                          <div class="col-md-12">
                            <label for="fid">Foreigner Id</label>
                            <input type="text" class="form-control" id="fid" name="forder.fid" value="${forder.fid}">
                          </div>
                            <div class="col-md-12">
                              <label for="oid">Order Id</label>
                              <input type="text" class="form-control" id="oid" name="forder.Id" value="${forder.Id}">
                            </div>
                            <div class="col-md-12">
                              <label for="date">Date</label>
                              <input type="text" class="form-control" id="date" name="forder.date" value="${forder.date}">
                            </div>
                            <div class="col-md-12">
                              <label for="description">Description</label>
                              <input type="text" class="form-control" id="description" name="forder.description" value="${forder.description}">
                            </div>
                            <div class="col-md-12">
                              <label for="request">Request</label>
                              <input type="text" class="form-control" id="request" name="forder.request" value="${forder.request}">
                            </div>
                            <div class="col-md-12">
                              <label for="language">Language</label>
                              <input type="text" class="form-control" id="language" name="forder.language" value="${forder.language}">
                            </div>
                            <div class="col-md-12">
                              <label for="salary">Salary</label>
                              <input type="text" class="form-control" id="salary" name="forder.salary" value="${forder.salary}">
                            </div>
                            <div class="col-md-12">
                              <label for="status">Status</label>
                              <input type="text" class="form-control" id="status"  value="${forder.dealing}">
                            </div>
                            <input type="radio" name="forder.dealing" value="已接单" >接单</td>
                              </c:forEach>

                            <%--request作用域中就是requestScope，session的就是sessionScope--%>
                            <c:forEach var="foreigner" items="${requestScope.foreigners}">
                              <div class="col-md-12">
                                <label for="userid">Foreigner Id</label>
                                <input type="text" class="form-control" id="userid" name="foreigner.Id" value="${foreigner.Id}">
                              </div>
                              <div class="col-md-12">
                                <label for="username">Username</label>
                                <input type="text" class="form-control" id="username" name="foreigner.fname" value="${foreigner.fname}">
                              </div>
                              <div class="col-md-12">
                                <label for="fpwd">Password</label>
                                <input type="text" class="form-control" id="fpwd" name="foreigner.fpwd" value="${foreigner.fpwd}">
                              </div>
                              <div class="col-md-12">
                                <label for="passportid">Passport Id</label>
                                <input type="text" class="form-control" id="passportid" name="foreigner.fpassportid" value="${foreigner.fpassportid}">
                              </div>
                              <div class="col-md-12">
                                <label for="fsex">Gender</label>
                                <input type="text" class="form-control" id="fsex" name="foreigner.fsex" value="${foreigner.fsex}">
                              </div>
                              <div class="col-md-12">
                                <label for="fage">Age</label>
                                <input type="text" class="form-control" id="fage" name="foreigner.fage" value="${foreigner.fage}">
                              </div>
                              <div class="col-md-12">
                                <label for="country">Country</label>
                                <input type="text" class="form-control" id="country" name="foreigner.fcountry" value="${foreigner.fcountry}">
                              </div>
                              <div class="col-md-12">
                                <label for="ftel">Tel</label>
                                <input type="text" class="form-control" id="ftel" name="foreigner.ftel" value="${foreigner.ftel}">
                              </div>
                              <div class="col-md-12">
                                <label for="femail">Email</label>
                                <input type="text" class="form-control" id="femail" name="foreigner.femail" value="${foreigner.femail}">
                              </div>
                            </c:forEach>

                            <div class="col-md-12 mgt10">
                              <div class="col-md-6 col-xs-6"><input type="submit" class="btn btn-primary" value="确定接单"></div>
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



