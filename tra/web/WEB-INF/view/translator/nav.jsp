<%--
  Created by IntelliJ IDEA.
  User: Dong东
  Date: 2017/3/23
  Time: 21:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="row">
  <div class="col-sm-4 col-xs-12">
    <div id="gtco-logo"><a href="index.jsp">Glorater <em>.</em></a></div>
  </div>
  <div class="col-xs-8 text-right menu-1">
    <ul>
      <li class="has-dropdown">
        <a href="#">交易管理</a>
        <ul class="dropdown">

          <li><a href="/translator/myorder/${translator.Id}">我的订单</a></li>
          <li><a href="/translator/business">我要接单</a></li>
        </ul>
      </li>
      <li class="has-dropdown">
        <a href="#">用户安全</a>
        <ul class="dropdown">
          <li><a href="#">个人资料</a></li>
          <li><a href="/translator/dotsafe/${sessionScope.translator.Id}">账号安全</a></li>
        </ul>
      </li>
      <li class="has-dropdown ">
        <a href="#">账号中心</a>
        <ul class="dropdown">
          <li><a href="/translator/dotvoucher/${sessionScope.translator.Id}">我的现金券</a></li>
          <li><a href="/translator/gotocredit/${sessionScope.translator.Id}">信用评级</a></li>
        </ul>
      </li>
      <li class="btn-cta"><a href="#"><span>Get started</span></a></li>
    </ul>

  </div>
</div>
