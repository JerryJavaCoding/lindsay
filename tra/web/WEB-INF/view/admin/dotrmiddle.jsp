<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 宋琳琳
  Date: 2017/3/9 0009
  Time: 14:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>译员注册跳转</title>
</head>
<body>
<c:forEach var="translator" items="${requestScope.translators}">
  ${translator.tname}.Welcome.Click to Login.
  <a href="/translator/gotoinfo/${translator.Id}" >Login</a></td>
  </tr>
  </tr>
  </c:forEach>
</body>
</html>
