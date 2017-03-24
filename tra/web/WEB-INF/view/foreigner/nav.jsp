<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

<div class="row">
  <div class="col-sm-4 col-xs-12">
    <div id="gtco-logo"><a href="#">Glorater <em>.</em></a></div>
  </div>
  <div class="col-xs-8 text-right menu-1">
    <ul>
      <li class="has-dropdown">
        <a>交易管理</a>
        <ul class="dropdown">
          <li><a href="/foreigner/selectorder/${foreigner.Id}">我的订单</a></li>
          <li><a href="/foreigner/gotoforder">发布订单</a></li>
        </ul>
      </li>
      <li class="has-dropdown">
        <a>用户安全</a>
        <ul class="dropdown">
          <li><a href="/foreigner/gotoinfo/${foreigner.Id}">个人资料</a></li>
          <li><a href="/foreigner/updatefpwd/${foreigner.Id}">账号安全</a></li>
        </ul>
      </li>
      <li class="has-dropdown ">
        <a>账号中心</a>
        <ul class="dropdown">
          <li><a href="/foreigner/dofvoucher/${foreigner.Id}">我的现金券</a></li>
          <li><a href="/foreigner/gotocredit/${foreigner.Id}">信用评级</a></li>
        </ul>
      </li>
      <li class="btn-cta"><a href="#"><span>Quit</span></a></li>
    </ul>
  </div>
</div>