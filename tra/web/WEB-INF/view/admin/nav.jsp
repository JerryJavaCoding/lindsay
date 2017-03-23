<%--
  Created by IntelliJ IDEA.
  User: Dong东
  Date: 2017/3/23
  Time: 21:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="row">
  <div class="col-sm-4 col-xs-12">
    <div id="gtco-logo"><a href="../index.jsp">Glorater <em>.</em></a></div>
  </div>
  <div class="col-xs-8 text-right menu-1">
    <ul>
      <li class="has-dropdown">
        <a href="#">用户管理</a>
        <ul class="dropdown">
          <li><a href="/admin/selecttran/${admin.Id}">译员管理</a></li>
          <li><a href="/admin/selectfore/${admin.Id}">外商管理</a></li>
        </ul>
      </li>

      <li class="has-dropdown">
        <a href="#">订单管理</a>
        <ul class="dropdown">
          <li><a href="/admin/selecttorder/${admin.Id}">译员订单管理</a></li>
          <li><a href="/admin/selectforder/${admin.Id}">外商订单管理</a></li>
        </ul>
      </li>

      <li class="has-dropdown">
        <a href="#">用户安全</a>
        <ul class="dropdown">
          <li><a href="/admin/updateapwd/${admin.Id}">修改密码</a></li>

        </ul>
      </li>
      <li class="has-dropdown ">
        <a href="#">账号中心</a>
        <ul class="dropdown">
          <li><a href="/admin/doallvoucher">现金券管理</a></li>
          <li><a href="#">信用评级管理</a></li>
        </ul>
      </li>
      <li class="btn-cta"><a href="/index"><span>退出</span></a></li>
    </ul>
  </div>
</div>