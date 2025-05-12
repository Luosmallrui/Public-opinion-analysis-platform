<%--
  Created by IntelliJ IDEA.
  User: Cristiano
  Date: 2022/7/5
  Time: 13:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--<script type="text/javascript"src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript"src="js/bootstrap.min.js"></script>--%>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<html>
<head>
    <title>新闻详情页</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<head>
    <title>
        消息可视化
    </title>
</head>
<%--<table align='center' border='1' cellspacing='0'>
    <tr>
        <td>id</td>
        <td>created_at</td>
        <td>screen_name</td>
        <td>topics</td>
        <td>text</td>

    </tr>
    <c:forEach items="${newss}" var="u" varStatus="st">
        <tr>
            <td>${u.id}</td>
            <td>${u.created_at}</td>
            <td>${u.screen_name}</td>
            <td>${u.topics}</td>
            <td>${u.text}</td>
        </tr>
    </c:forEach>
</table>--%>

<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <nav class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">首页</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active">
                            <a href="#">事件追踪</a>
                        </li>
                        <li>
                            <a href="#">新闻传播链</a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">热点预测<strong class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="#">Action</a>
                                </li>
                                <li>
                                    <a href="#">Another action</a>
                                </li>
                                <li>
                                    <a href="#">Something else here</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="#">Separated link</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="#">One more separated link</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <form class="navbar-form navbar-left" role="search" action="${pageContext.request.contextPath}/news/list">
                        <div class="form-group">
                            <input type="text" class="form-control" name="title" placeholder="请输入新闻关键词" />
                        </div> <%--<button type="submit"  class="btn btn-default">搜索</button>--%>
                        <div class="btn-group">
                            <button type="submit" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">按时间筛选
                                <span class="caret"></span>
                            </button>
                            <%--筛选顺序：点击下拉按钮之后按时间筛选，然后根据关键词选择新闻--%>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="http://localhost:8000/timeoneyear">近一年</a></li>
                                <li><a href="http://localhost:8000/timehalfyear">近半年</a></li>
                                <li><a href="http://localhost:8000/timeonemonth">近一个月</a></li>
                            </ul>
                        </div><button type="submit"  class="btn btn-default">搜索</button>

                    </form>
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#">Link</a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="#">Action</a>
                                </li>
                                <li>
                                    <a href="#">Another action</a>
                                </li>
                                <li>
                                    <a href="#">Something else here</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="#">Separated link</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>

            </nav>
            <div class="jumbotron">
                <h1>
                    欢迎来到舆情分析平台
                </h1>
                <p>
                    这是一个关注新闻事件来龙去脉，尽可能还原事实真相的平台。能够帮助分析新闻事件，甚至预测舆论走向....
                </p>
                <p>
                    <a class="btn btn-primary btn-large" href="#">了解更多</a>
                </p>
            </div>
        </div>
    </div>


    <c:forEach items="${newss}" var="u" varStatus="st">
        <tr>
            <div class="row clearfix">
                <div class="col-md-6 column">
                    <div style="white-space:normal; word-break:break-all;overflow:hidden;">
                            <center>
                                <h2>
                                        ${u.topics}
                                </h2>
                                <p>
                                        发布时间：${u.createdAt} 新闻来源:${u.screenName}
                                </p>
                                <p>
                                    <a class="btn" href="http://localhost:8088/truefalse">点击查看新闻详情»</a>
                                </p>
                            </center>
                        </div>
                    </div>
                </div>


        </tr>
    </c:forEach>
</div>
</body>

