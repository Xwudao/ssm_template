<%--
  Created by IntelliJ IDEA.
  User: chenjiaxing
  Date: 2019/3/22
  Time: 21:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<style>
    #box{
        width: 370px;
        height: 400px;
        border: 1px solid #E2E3E5;
        position: absolute;
        left: 50%;
        top: 50%;
        margin-left: -185px;
        margin-top: -200px;
    }
    #logo{
        width: 370px;
        height: 95px;
        font-size: 30px;
        color: #676A6C;
        line-height: 95px;
        margin-left: 40px;
    }
    #user{
        width: 295px;
        height: 50px;
        margin-left: 40px;
    }
    #pass{
        width: 295px;
        height: 50px;
        margin-left: 40px;
    }
    .input-group{
        margin-left: 40px;
    }
    #img-submit {
        width: 95px;
        height: 30px;
        margin-top: 15px;
        border-radius: 2px;
        cursor: pointer;
        position: absolute;
        z-index: 3;
        left: 10px;
        top: 0;
    }
    #validateCode {
        height: 55px;
        padding-left: 120px;
        width: 295px;
    }
    #verify{
        width: 295px;
        height: 60px;
        margin-left: 40px;
        border: 1px solid #EDEDEE;
    }
    #btn-login{
        width: 295px;
        height: 50px;
        margin-left: 40px;
        margin-top: 20px;
    }
    #remember{
        width: 80px;
        height: 20px;
        margin-left: 50px;
        margin-top: 20px;
        color: #676A6C;
        font-size: 15px;
    }
</style>

<head>
    <meta charset="UTF-8">
    <title>登录页面</title>
    <meta name="description" content="particles.js is a lightweight JavaScript library for creating particles.">
    <meta name="author" content="Vincent Garreau" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
</head>
<body>
<canvas class="particle"></canvas>
<div id="box">
    <div id="logo">留言板管理员登陆页面</div>
    <div id="info">
        <form action="${pageContext.request.contextPath}/admin/login" method="post">
        <input type="text" class="form-control" id="user" placeholder="账号:">
        <br/>
        <input type="password" class="form-control" id="pass" placeholder="密码:">
        <button class="btn btn-info" id="btn-login" onclick="VerifyLogin()" type="submit">登录</button>
        </form>
    </div>
</div>
</body>
</html>
