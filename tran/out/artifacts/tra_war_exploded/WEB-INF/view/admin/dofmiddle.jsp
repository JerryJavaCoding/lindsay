<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 宋琳琳
  Date: 2017/3/7 0007
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>外商登录跳转页面</title>
</head>
<body>
<c:forEach var="foreigner" items="${requestScope.foreigners}">
  ${foreigner.fname}.Welcome.Click to Login.
  <a href="/foreigner/gotoinfo/${foreigner.Id}" >Login</a>

</c:forEach>
</body>
</html>
