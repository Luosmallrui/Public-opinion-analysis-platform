<%--
  Created by IntelliJ IDEA.
  User: Cristiano
  Date: 2022/7/31
  Time: 19:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<head>
    <title>
        消息详细内容
    </title>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <center>
                <h1>
                    <c:forEach items="${dt}" var="v" varStatus="st">
                        <tr>
                            <div class="row clearfix">
                                <div class="col-md-12 column">
                                    <div style="white-space:normal; word-break:break-all;overflow:hidden;">
                                        <center>
                                            <h2>
                                                    ${v.topics}
                                            </h2>
                                            <p>
                                                发布时间：${v.createdAt}   新闻来源:${v.screenName}
                                            </p>
                                            <p>
                                                新闻内容：${v.text}
                                            </p>
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
