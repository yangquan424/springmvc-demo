<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/17 0017
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--taglib指令引入更多的标签--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>empList</title>
    <style>
        body {
            max-width: 800px;
            min-width: 480px;
            margin: 0 auto;

        }

        table.imagetable {
            /*font-family: verdana,arial,sans-serif;*/
            width: 800px;
            font-size: 11px;
            color: #333333;
            border-width: 1px;
            border-color: #999999;
            border-collapse: collapse;
            margin-top: 100px;
        }

        table.imagetable th {
            background: #b5cfd2;
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #999999;
        }

        table.imagetable td {
            background: #dcddc0;
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #999999;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="d1">
    <a class="a1" href='insert' style='margin-right:2px'>添加</a>
</div>
<table class="imagetable">

    <tr>
        <th>empno</th>
        <th>ename</th>
        <th>job</th>
        <th>mgr</th>
        <th>hiredate</th>
        <th>sal</th>
        <th>com</th>
        <th>deptno</th>
        <th>delete</th>
        <th>update</th>
    </tr>
    <c:forEach var="emp" items="${requestScope.empList}">
        <tr>
            <td>${emp.empno}</td>
            <td>${emp.ename}</td>
            <td>${emp.job}</td>
            <td>${emp.mgr}</td>
            <td>${emp.hiredate}</td>
            <td>${emp.sal}</td>
            <td>${emp.com}</td>
            <td>${emp.deptno}</td>
            <td><a href="delete?empno=${emp.empno}">删除</a></td>
            <td><a href="update?empno=${emp.empno}">修改</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
