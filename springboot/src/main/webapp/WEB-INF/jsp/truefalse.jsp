<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<head>
    <title>
        消息真假查询
    </title>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <center>
                <h1>
                    <c:forEach items="${tf}" var="v" varStatus="st">
                        <tr>
                            <div class="row clearfix">
                                <div class="col-md-6 column">
                                    <div style="white-space:normal; word-break:break-all;overflow:hidden;">
                                        <center>
                                            <h2>
                                                   该新闻为 ${v.truefalse}
                                            </h2>
                                            <%--<p>
                                                    ${v.create_time} :${v.content}
                                            </p>
                                            <p>
                                                <a class="btn" href="http://localhost:8000/truefalse?id=${v.id}">查看新闻真假»</a>
                                                <a class="btn" href="http://localhost:8000/source">查看新闻源头»</a>
                                            </p>--%>
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