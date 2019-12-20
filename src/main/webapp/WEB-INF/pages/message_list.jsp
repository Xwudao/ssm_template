<%--
  Created by IntelliJ IDEA.
  User: chenjiaxing
  Date: 2019/3/22
  Time: 21:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>查看留言</title>
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
                        <li><a href="${pageContext.request.contextPath}/indexUI">添加留言</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/messageList">查看留言</a></li>
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
<br/>


<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10">
        <c:forEach var="m" items="${messageList}">
        <div class="panel panel-info">
            <div class="panel-heading">昵称:${m.name} &nbsp;&nbsp;&nbsp;邮箱:${m.mail} &nbsp;&nbsp;&nbsp;留言时间:${m.add_date_string}</div>
            <div class="panel-body">
                ${m.content}
            </div>
        </div>
        </c:forEach>
        </div>
    </div>
    <div class="col-md-1"></div>
</div>
</body>
</html>