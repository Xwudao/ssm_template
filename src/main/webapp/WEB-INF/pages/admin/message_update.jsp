<%--
  Created by IntelliJ IDEA.
  User: chenjiaxing
  Date: 2019/3/22
  Time: 21:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>留言板后台管理</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>
<body>
<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10">
        <div class="bs-example" data-example-id="inverted-navbar">
            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                data-target="#bs-example-navbar-collapse-9" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="${pageContext.request.contextPath}/admin/login">留言板后台管理</a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-9">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="${pageContext.request.contextPath}/admin/messageManage">留言管理</a></li>
                            <li><a href="#">用户管理</a></li>
                            <li><a href="#">其他</a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container-fluid -->
            </nav>
        </div><!-- /example -->
    </div>
    <div class="col-md-1"></div>
</div>

<br/>
<form class="form-inline" action="${pageContext.request.contextPath}/admin/updateMessage" method="post">
    <input type="text" value="${message.id}" name="id" hidden="true">
    <input type="text" value="${message.add_date}" name="add_date" hidden="true">
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-10">
            <textarea name="content" class="form-control" rows="6" style="width: 100%">${message.content}</textarea>
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
                <input type="text" class="form-control" id="exampleInputEmail3" placeholder="昵称" name="name" value="${message.name}">
            </div>
            &nbsp;&nbsp;
            <div class="form-group">
                邮箱：
                <input type="email" class="form-control" id="exampleInputPassword3" placeholder="邮箱" name="mail" value="${message.mail}">
            </div>
            <button type="submit" class="btn btn-primary">提交</button>
        </div>
        <div class="col-md-1"></div>
    </div>
</form>
</body>
</html>

