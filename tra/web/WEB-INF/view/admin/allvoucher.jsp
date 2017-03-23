<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
  <base href="${CONTEXT_PATH}/"/>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Voucher</title>
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

        <jsp:include page="./nav.jsp"/>

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
                        <form action="#">
                          <div class="col-md-12">
                            <label >My Voucher</label>
                            <div class="table_box">
                              <table class="list" border="1">
                                <tbody>
                                <tr>
                                  <td>Translator Id</td>
                                  <td>Voucher Id</td>
                                  <td>Voucher name</td>
                                  <td>Voucher</td>
                                  <td>EXP Date</td>
                                  <td>Status</td>
                                  <td></td>
                                </tr>
                                <%--request作用域中就是requestScope，session的就是sessionScope--%>
                                <c:forEach var="tvoucher" items="${requestScope.tvouchers}">

                                  <tr>
                                    <td style="text-align:left;">${tvoucher.traid}</td>
                                    <td style="text-align:left;">${tvoucher.tvid}</td>
                                    <td style="text-align:left;">${tvoucher.tvname}</td>
                                    <td style="text-align:left;">${tvoucher.tvyuan}</td>
                                    <td style="text-align:left;">${tvoucher.tvtime}</td>
                                    <td style="text-align:left;">${tvoucher.tvstatus}</td>
                                    <td style="text-align:left;"><a href="/admin/deletetvoucher/${tvoucher.tvid}">删除</a></td>
                                  </tr>
                                </c:forEach>
                                </#list>
                                </tbody>
                              </table>

                              <div class="table_box">
                              <table class="list" border="1">
                                <tbody>
                                <tr>
                                  <td>Foreigner Id</td>
                                  <td>Voucher Id</td>
                                  <td>Voucher name</td>
                                  <td>Voucher</td>
                                  <td>EXP Date</td>
                                  <td>Status</td>
                                  <td></td>
                                </tr>
                                <%--request作用域中就是requestScope，session的就是sessionScope--%>
                                  <c:forEach var="fvoucher" items="${requestScope.fvouchers}">

                                    <tr>
                                    <td style="text-align:left;">${fvoucher.forid}</td>
                                    <td style="text-align:left;">${fvoucher.fvid}</td>
                                    <td style="text-align:left;">${fvoucher.fvname}</td>
                                    <td style="text-align:left;">${fvoucher.fvyuan}</td>
                                    <td style="text-align:left;">${fvoucher.fvtime}</td>
                                    <td style="text-align:left;">${fvoucher.fvstatus}</td>
                                    <td style="text-align:left;"><a href="/admin/deletefvoucher/${fvoucher.fvid}">删除</a></td>
                                    </tr>
                                    </c:forEach>
                                </#list>
                                </tbody>
                              </table>
                              </div>
                            </div>
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

