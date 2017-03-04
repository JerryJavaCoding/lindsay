<%--
  Created by IntelliJ IDEA.
  User: 宋琳琳
  Date: 2017/2/22 0022
  Time: 23:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--每个使用jstl的jsp文件都要加这句--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>数据列表</title>
</head>
<div class="table_box">
  <table class="list" border="1">
    <tbody>
    <tr>
      <td>用户id</td>
      <td>姓名</td>
      <td>性别</td>
      <td>联系方式</td>
      <td>年龄</td>
      <td>邮箱</td>
      <td>密码</td>
      <td>语种</td>
    </tr>
    <%--request作用域中就是requestScope，session的就是sessionScope--%>
    <c:forEach var="translator" items="${requestScope.translatorList}">

      <tr>
        <td style="text-align:left;">${translator.Id}</td>
        <td style="text-align:left;">${translator.tname}</td>
        <td style="text-align:left;">${translator.tsex}</td>
        <td style="text-align:left;">${translator.tel}</td>
        <td style="text-align:left;">${translator.tage}</td>
        <td style="text-align:left;">${translator.temail}</td>
        <td style="text-align:left;">${translator.tpwd}</td>
        <td style="text-align:left;">${translator.tlanguage}</td>
      </tr>
    </c:forEach>
    </#list>
    </tbody>
  </table>
</div>
</body>
</html>
