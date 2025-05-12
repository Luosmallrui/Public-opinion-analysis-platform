<%--
  Created by IntelliJ IDEA.
  User: Cristiano
  Date: 2022/7/20
  Time: 16:00
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
<body>
<div class="row clearfix">
    <center>
    <div class="col-md-12 column">
        <nav class="navbar navbar-default" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="http://localhost:8088/news/list">首页</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#">事件追踪</a>
                    </li>
                    <li>
                        <a href="http://localhost:8088/reposts/list">新闻传播链</a>
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
                        <input type="text" class="form-control" name="topics" placeholder="请输入新闻关键词" />
                    </div> <%--<button type="submit"  class="btn btn-default">搜索</button>--%>
                    <div class="btn-group">
                        <button type="submit" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">按时间筛选
                            <span class="caret"></span>
                        </button>
                        <%--筛选顺序：点击下拉按钮之后按时间筛选，然后根据关键词选择新闻--%>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="http://localhost:8088/timeoneweek">近一周</a></li>
                            <li><a href="http://localhost:8088/timeonemonth">近一个月</a></li>
                            <li><a href="http://localhost:8088/timehalfyear">近半年</a></li>
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
            <%--<img src="https://w.wallhaven.cc/full/49/wallhaven-49r6e8.jpg" alt="">--%>
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
        <div class="carousel slide" id="carousel-53166">
            <ol class="carousel-indicators">
                <li data-slide-to="0" data-target="#carousel-53166">
                </li>
                <li data-slide-to="1" data-target="#carousel-53166">
                </li>
                <li data-slide-to="2" data-target="#carousel-53166" class="active">
                </li>
            </ol>
            <div class="carousel-inner">
                <div class="item">
                    <img alt="First slide" src="https://www.runoob.com/try/bootstrap/layoutit/v3/default2.jpg" />
                    <div class="carousel-caption">
                        <h4>
                            First Thumbnail label
                        </h4>
                        <p>
                            Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                        </p>
                    </div>
                </div>
                <div class="item">
                    <img alt="" src="https://www.runoob.com/try/bootstrap/layoutit/v3/default1.jpg" />
                    <div class="carousel-caption">
                        <h4>
                            Second Thumbnail label
                        </h4>
                        <p>
                            Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                        </p>
                    </div>
                </div>
                <div class="item active">
                    <img alt="" src="https://www.runoob.com/try/bootstrap/layoutit/v3/default.jpg" />
                    <div class="carousel-caption">
                        <h4>
                            Third Thumbnail label
                        </h4>
                        <p>
                            Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                        </p>
                    </div>
                </div>
            </div> <a class="left carousel-control" href="#carousel-53166" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-53166" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
        </div>
    </div>
    </center>
</div>
<%--<div>
    <form action="${pageContext.request.contextPath}/news/list">
        <input type="text" name="title" placeholder="请输入新闻关键词" />
        <button type="submit">搜索</button>
    </form>

</div>--%>
<table align='center' border='1' cellspacing='0'>
    <%--<tr>
        <td>id</td>
        <td>create_time</td>
        <td>title</td>
        <td>creator</td>
        <td>content</td>
    </tr>--%>
    <c:forEach items="${newsList}" var="v" varStatus="st">
        <%--<tr>
            <td>${v.id}</td>
            <td>${v.create_time}</td>
            <td>${v.title}</td>
            <td>${v.creator}</td>
            <td>${v.content}</td>
        </tr>--%>
        <tr>
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <div style="white-space:normal; word-break:break-all;overflow:hidden;">
                        <center>
                            <h2>
                                    ${v.topics}
                            </h2>
                            <p>
                                发布时间：${v.createdAt}   新闻来源:${v.screenName}   新闻真假：${v.label}
                            </p>
                            <p>
                                <a class="btn" href="http://localhost:8088/detail?id=${v.id}">查看新闻详情»</a>
                                <a class="btn" href="http://localhost:8000/source?id=${v.id}">查看新闻源头»</a>
                            </p>
                            <%--<p>
                                <a class="btn" href="http://localhost:8000/source">查看新闻源头»</a>
                            </p>--%>
                        </center>
                    </div>
                </div>
            </div>


        </tr>
    </c:forEach>
</table>

<style>
    .row clearfix{
        height: 100px;
        width: 33.33333333%;



    }
    .col-md-12 column{

        border-style: none;
        /*overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;*/
    }
    h2{
        /*height: 100px;
        overflow: hidden;
        text-overflow: ellipsis;
        display: -webkit-box;
        -webkit-box-orient: vertical;
        -webkit-line-clamp:3;*/
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
    }

    p{
        height: 200px;
        overflow: hidden;
        text-overflow: ellipsis;
        display: -webkit-box;
        -webkit-box-orient: vertical;
        -webkit-line-clamp:11;
    }

</style>
</body>
</html>