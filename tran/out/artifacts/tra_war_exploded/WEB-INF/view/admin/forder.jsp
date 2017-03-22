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
  <style>
    .list a:link,.list a:visited{
      color:blue;
    }
    .list a:hover{
      color:red;
    }
  </style>

</head>
<body>


<div class="gtco-loader">

</div>

<div id="page">


  <div class="page-inner">
    <nav class="gtco-nav" role="navigation">
      <div class="gtco-container">

        <div class="row">
          <div class="col-sm-4 col-xs-12">
            <div id="gtco-logo"><a href="../index.jsp">Glorater <em>.</em></a></div>
          </div>
          <div class="col-xs-8 text-right menu-1">
            <ul>
              <li class="has-dropdown">
                <a>用户管理</a>
                <ul class="dropdown">
                  <li><a href="/admin/selecttran/${admin.Id}">译员管理</a></li>
                  <li><a href="/admin/selectfore/${admin.Id}">外商管理</a></li>
                </ul>
              </li>

              <li class="has-dropdown">
                <a>订单管理</a>
                <ul class="dropdown">
                  <li><a href="/admin/selecttorder/${admin.Id}">译员订单管理</a></li>
                  <li><a href="/admin/selectforder/${admin.Id}">外商订单管理</a></li>
                </ul>
              </li>

              <li class="has-dropdown">
                <a>用户安全</a>
                <ul class="dropdown">
                  <li><a href="/admin/updateapwd/${admin.Id}">修改密码</a></li>

                </ul>
              </li>
              <li class="has-dropdown ">
                <a>账号中心</a>
                <ul class="dropdown">
                  <li><a href="/admin/doallvoucher">现金券管理</a></li>
                  <li><a href="#">信用评级管理</a></li>
                </ul>
              </li>
              <li class="btn-cta"><a href="/index"><span>退出</span></a></li>
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
                        <c:forEach var="admin" items="${requestScope.admins}">
                        <form action="/admin/selectforder/${admin.Id}">
                          </c:forEach>
                          <div class="table_box">
                            <table class="list" border="1">
                              <tbody>
                              <tr>
                                <td>Foreigner Id</td>
                                <td>订单Id</td>
                                <td>工作时间</td>
                                <td>工作内容</td>
                                <td>工作描述</td>
                                <td>语言水平要求</td>
                                <td>语言种类</td>
                                <td>薪资</td>
                                <td>订单状态</td>
                                <td>订单完成度</td>
                              </tr>
                              <%--request作用域中就是requestScope，session的就是sessionScope--%>
                              <c:forEach var="forder" items="${requestScope.forders}">

                              <tr>
                                <td style="text-align:left;">${forder.fid}</td>
                                <td style="text-align:left;">${forder.Id}</td>
                                <td style="text-align:left;">${forder.date}</td>
                                <td style="text-align:left;">${forder.work}</td>
                                <td style="text-align:left;">${forder.description}</td>
                                <td style="text-align:left;">${forder.request}</td>
                                <td style="text-align:left;">${forder.language}</td>
                                <td style="text-align:left;">${forder.salary}</td>
                                <td style="text-align:left;">${forder.dealing}</td>
                                <td style="text-align:left;">${forder.completed}</td>
                                <td style="text-align:left;"><a href="/admin/deleteforder?Id=${forder.Id}&fid=${forder.fid}">删除订单</a></td>
                                </c:forEach>
                              </tr>
                              </#list>
                              </tbody>

                            </table>
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
					<i class="ti-announcement"></i></span>
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
<script src="js/info.js"></script>


</body>
</html>

