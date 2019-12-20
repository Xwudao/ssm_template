<%--
  Created by IntelliJ IDEA.
  User: chenjiaxing
  Date: 2019/3/22
  Time: 21:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>在线留言板</title>
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css">
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body>
<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="${pageContext.request.contextPath}/indexUI">在线留言板</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="${pageContext.request.contextPath}/indexUI">添加留言 <span class="sr-only">(current)</span></a></li>
                        <li><a href="${pageContext.request.contextPath}/messageList">查看留言</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">其他 <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="${pageContext.request.contextPath}/admin/loginUI" target="_blank">后台管理</a></li>
                            </ul>
                        </li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li class="regist">
                            <a href="#" role="button" >注册 </a>
                        </li>
                        <li class="login">
                            <a href="#" role="button" >登录 </a>
                        </li>
                </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
    </div>
    <div class="col-md-1"></div>
</div>
<form class="form-inline" action="${pageContext.request.contextPath}/addMessage" method="post">
<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10">
        <textarea name="content" class="form-control" rows="6" style="width: 100%"></textarea>
    </div>
    <div class="col-md-1"></div>
</div>
<br/>
<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-5"></div>
    <div class="col-md-5">

            <div class="form-group">
                昵称：
                <input type="text" class="form-control" id="exampleInputEmail3" placeholder="昵称" name="name">
            </div>
            &nbsp;&nbsp;
            <div class="form-group">
                邮箱：
                <input type="email" class="form-control" id="exampleInputPassword3" placeholder="邮箱" name="mail">
            </div>
            <button type="submit" class="btn btn-primary">提交</button>
    </div>
    <div class="col-md-1"></div>
</div>
</form>
</body>
</html>
