<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/29 0029
  Time: 20:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--taglib指令引入更多的标签--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }
        #main{
            margin: 0 auto;
            position: relative;
            top: 100px;
            width: 500px;
            height: 300px;
        }
        label {
            display: inline-block;
            width: 100px;
            margin-right: 100px;
        }
        input {
            width: 250px;
            height: 30px;
        }
        button {
            top: 20px;
            position: relative;
            left: 105px;
            border-width: 0;
            width: 150px;
            height: 40px;
            background-color: rgba(22, 155, 213, 1);
            border-radius: 10px;
            border: 0;
        }
        input::-webkit-input-placeholder{
            color: #00FF00;
        }
    </style>
</head>
<body>
<div id="main">
    <C: var="emp" items="${requestScope.emp}">
    <form action="update" method="post">

        <div class="row">
            <div class="cell">
                <label for="empno">Emp No</label><input type="text" name="empno" id="empno" value="${emp.empno}">
            </div>
            <div class="cell">
                <label for="ename">Emp Name</label><input type="text" name="ename" id="ename" value="${emp.ename}">
            </div>
        </div>
        <div class="row">
            <div class="cell">
                <label for="job">Job</label><input type="text" name="job" id="job" value="${emp.job}">
            </div>
            <div class="cell">
                <label for="mgr">Mgr</label><input type="text" name="mgr" id="mgr" value="${emp.mgr}">
            </div>
        </div>
        <div class="row">
            <div class="cell">
                <label for="hiredate">Hire Date</label><input type="text" name="hiredate" id="hiredate" value="${emp.hiredate}">
            </div>
            <div class="cell">
                <label for="sal">Sal</label><input type="text" name="sal" id="sal" value="${emp.sal}">
            </div>
        </div>
        <div class="row">
            <div class="cell">
                <label for="com">Com</label><input type="text" name="com" id="com" value="${emp.com}">
            </div>
            <div class="cell">
                <label for="deptno">Dept No</label><input type="text" name="deptno" id="deptno" value="${emp.deptno}">
            </div>
        </div>
        <div class="row">
            <button type="submit">update</button>
        </div>

    </form>
    </C:>
</div>

</body>
</html>