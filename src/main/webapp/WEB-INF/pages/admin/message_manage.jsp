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


<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10">
        <table class="table table-hover">
            <tr>
                <td>ID</td>
                <td>留言人</td>
                <td>邮箱</td>
                <td>留言内容</td>
                <td>留言时间</td>
                <td>操作</td>
            </tr>
            <c:forEach var="m" items="${messageList}">
                <tr>
                    <td>${m.id}</td>
                    <td>${m.name}</td>
                    <td>${m.mail}</td>
                    <td>${m.content}</td>
                    <td>${m.add_date_string}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/admin/updateMessageUI?id=${m.id}">编辑</a>
                        &nbsp;&nbsp;
                        <a href="${pageContext.request.contextPath}/admin/deleteMessage?id=${m.id}">删除</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <div class="col-md-1"></div>
</div>
</body>
</html>
