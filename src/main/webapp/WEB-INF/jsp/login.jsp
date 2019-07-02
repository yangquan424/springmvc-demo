<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/27 0027
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录测试</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        #form{
            margin: 0 auto;
            position: relative;
            top: 200px;
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


    </style>
</head>
<body>
<div id="form">
    <form action="login" method="post">
        <div class="row">
            <label for="username">Username</label>
            <input type="text" name="username" id="username">
        </div>
        <div class="row">
            <label for="password">Password</label>
            <input type="password" name="psaaword" id="password">
        </div>
        <div class="row">
            <button class="submit" id="b2">Login</button><button id="b1">regiser</button>
        </div>
    </form>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<script>
    $(function () {
        $("#b1").click(function () {
            window.location.href = "register";
            return false;
        });
        $("#b2").click(function () {
            let result = $("#username").val();
            let password = $("#password").val();
            if (result === "") {
                alert("用户名不能为空");
                return false;
            }
            if (password === "") {
                alert("密码不能为空");
                return false;
            } else {
                return true;
            }
        });
    });
</script>
</body>
</html>