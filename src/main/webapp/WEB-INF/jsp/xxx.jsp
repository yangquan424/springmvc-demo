<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/1 0001
  Time: 09:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<img src=${sessionScope.path} alt=''>
<form name="Form2" action="springUpload" method="post" enctype="multipart/form-data">
    <input type="file" name="file">
    <input type="submit" value="upload"/>
</form>
</body>
