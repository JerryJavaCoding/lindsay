<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/2/14
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form action="/translator/dotregister" method="post">
  <input name="translator.tname" type="text" placeholder="请输入用户名"/>
  <br><br>
  <input name="translator.tpwd" type="text" placeholder="请输入密码"/>
  <br><br>
  <input name="translator.tidno" type="text" placeholder="请输入身份证号"/>
  <br><br>
  <input name="translator.tsex" type="text" placeholder="请输入性别"/>
  <br><br>
  <input name="translator.tage" type="text" placeholder="请输入年龄"/>
  <br><br>
  <input name="translator.tel" type="text" placeholder="请输入联系方式"/>
  <br><br>
  <input name="translator.temail" type="text" placeholder="请输入邮箱"/>
  <br><br>
  <input name="translator.tlanguage" type="text" placeholder="请输入语种"/>

  <input type="submit">提交</input>
</form>

