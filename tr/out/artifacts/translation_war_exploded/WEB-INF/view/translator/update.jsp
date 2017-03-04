<%--
  Created by IntelliJ IDEA.
  User: 宋琳琳
  Date: 2017/2/22 0022
  Time: 21:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form action="/translator/dotupdate"method="post">
  <input name="translator.Id"type="text"value="${translator.Id}" placeholder="请输入用户名id"/>
  <input name="translator.tname"type="text"value="${translator.tname}" placeholder="请输入用户名"/>
  <input name="translator.tpwd"type="text"value="${translator.tpwd}" placeholder="请输入密码"/>
  <input type="submit">提交</input>
</form>