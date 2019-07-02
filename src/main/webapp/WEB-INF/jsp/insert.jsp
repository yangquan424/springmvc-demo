<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/29 0029
  Time: 21:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>添加员工信息</title>
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
        }
        input {
            width: 250px;
            height: 30px;
        }
        button {
            position: relative;
            left: 105px;
            width: 120px;
            height: 30px;
            border-radius: 12px;
            border-width: 0;
        }

        button {
            width: 150px;
            height: 40px;
            background-color: rgba(22, 155, 213, 1);
            border-radius: 10px;
            border: 0;
        }
    </style>
</head>
<body>
<div id="main">
    <form action="insert" method="post">
        <div class="row">
            <div class="cell">
                <label for="empno">Emp No</label><input type="text" name="empno" id="empno">
            </div>
            <div class="cell">
                <label for="ename">Emp Name</label><input type="text" name="ename" id="ename">
            </div>
        </div>
        <div class="row">
            <div class="cell">
                <label for="job">Job</label><input type="text" name="job" id="job">
            </div>
            <div class="cell">
                <label for="mgr">Mgr</label><input type="text" name="mgr" id="mgr">
            </div>
        </div>
        <div class="row">
            <div class="cell">
                <label for="hiredate">Hire Date</label><input type="text" name="hiredate" id="hiredate">
            </div>
            <div class="cell">
                <label for="sal">Sal</label><input type="text" name="sal" id="sal">
            </div>
        </div>
        <div class="row">
            <div class="cell">
                <label for="com">Com</label><input type="text" name="com" id="com">
            </div>
            <div class="cell">
                <label for="deptno">Dept No</label><input type="text" name="deptno" id="deptno">
            </div>
        </div>
        <div class="row">
            <button type="submit">add</button>
        </div>
    </form>
</div>

</body>
</html>