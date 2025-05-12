<%--
  Created by IntelliJ IDEA.
  User: Cristiano
  Date: 2022/7/22
  Time: 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<head>
    <title>
        新闻源头查询
    </title>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <center>
                <h1>
                    <c:forEach items="${so}" var="u" varStatus="st">
                        <tr>
                            <div class="row clearfix">
                                <div class="col-md-6 column">
                                    <div style="white-space:normal; word-break:break-all;overflow:hidden;">
                                        <center>
                                            <h2>
                                                    新闻源头为 ${u.source}
                                            </h2>
                                        </center>
                                    </div>
                                </div>
                            </div>


                        </tr>
                    </c:forEach>
                </h1>
            </center>
        </div>
    </div>
</div>
</body>

