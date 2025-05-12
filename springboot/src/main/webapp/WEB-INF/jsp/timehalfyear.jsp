<%--
  Created by IntelliJ IDEA.
  User: Cristiano
  Date: 2022/7/24
  Time: 14:57
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
    <title>根据时间筛选新闻（近半年）</title>
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
                        <li class="active">
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
                    <form class="navbar-form navbar-left" role="search" action="${pageContext.request.contextPath}/timehalfyear">
                        <div class="form-group">
                            <input type="text" class="form-control" name="topics" placeholder="请输入新闻关键词" />
                        </div> <%--<button type="submit"  class="btn btn-default">搜索</button>--%>
                        <%--<div class="btn-group">
                            <button type="submit" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">按时间筛选
                                <span class="caret"></span>
                            </button>
                            &lt;%&ndash;筛选顺序：点击下拉按钮之后按时间筛选，然后根据关键词选择新闻&ndash;%&gt;
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="http://localhost:8000/timeoneyear">近一周</a></li>
                                <li><a href="http://localhost:8000/timehalfyear">近半年</a></li>
                                <li><a href="#">近半年</a></li>
                            </ul>
                        </div>--%><button type="submit"  class="btn btn-default">搜索</button>

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
                    查看近半年的新闻
                </h1>
                <p>
                    这是一个关注新闻事件来龙去脉，尽可能还原事实真相的平台。能够帮助分析新闻事件，甚至预测舆论走向....
                </p>
                <p>
                    <a class="btn btn-primary btn-large" href="#">了解更多</a>
                </p>
            </div>
        </div>
    </center>
</div>
<table align='center' border='1' cellspacing='0'>
    <%--<tr>
        <td>id</td>
        <td>create_time</td>
        <td>title</td>
        <td>creator</td>
        <td>content</td>
    </tr>--%>
    <c:forEach items="${thy}" var="v" varStatus="st">
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
                                发布时间：${v.createdAt}   新闻来源：${v.screenName}   新闻真假：${v.label}
                            </p>
                            <p>
                                <a class="btn" href="http://localhost:8088/newsdetail?id=${v.id}">查看新闻详情»</a>
                                <a class="btn" href="http://localhost:8000/source?id=${v.id}">查看新闻源头»</a>
                            </p>

                        </center>
                    </div>
                </div>
            </div>


        </tr>
    </c:forEach>
</table>

</body>
</html>
