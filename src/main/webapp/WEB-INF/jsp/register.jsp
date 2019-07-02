<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/28 0028
  Time: 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>管理员注册</title>
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
        }
        input::-webkit-input-placeholder{
            color: #00FF00;
        }
    </style>
</head>
<body>
<div id="main">
    <form action="register" method="post">
        <div class="row">
            <div class="cell">
                <label for="username">UserName</label><input type="text" name="username" id="username" placeholder="请输入用户名">
            </div>
            <div class="cell">
                <label for="password1">Password</label><input type="password" name="password" id="password1" placeholder="请输入密码">
            </div>
            <div class="cell">
                <label for="password2">Confirmation</label><input type="password" name="password2" id="password2" placeholder="请确认密码">
            </div>
        </div>
        <div class="row">
            <button type="submit">register</button>
        </div>
    </form>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<script>
    $(function () {
        $("button").click(function (e) {
            e.preventDefault();
            if ($("#password1").val() !== $("#password2").val()){
                alert("两次输入的密码不一致！");
                return;
            }
            // 提交表单
            $("form").submit();
        });
    });
</script>

</body>
</html>