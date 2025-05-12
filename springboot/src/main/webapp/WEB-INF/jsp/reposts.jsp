<%--
  Created by IntelliJ IDEA.
  User: Cristiano
  Date: 2022/8/15
  Time: 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>新闻传播路径可视化</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="shortcut icon" href="favicon.ico"> <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css?v=4.1.0" rel="stylesheet">
    <style type="text/css">
        html, body, #main { height: 100%; width: 100%; margin: 0; padding: 0 }
    </style>
</head>
<body>
<div class="row clearfix">
    <center>
        <div class="col-md-12 column">
            <nav class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="/news/list">首页</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li>
                            <a href="#">事件追踪</a>
                        </li>
                        <li class="active">
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
                    <form class="navbar-form navbar-left" role="search" action="${pageContext.request.contextPath}/reposts/list">
                        <div class="form-group">
                            <input type="text" class="form-control" name="topics" placeholder="请输入新闻关键词" />
                        </div> <%--<button type="submit"  class="btn btn-default">搜索</button>--%>
                        <%--<div class="btn-group">
                            <button type="submit" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">按时间筛选
                                <span class="caret"></span>
                            </button>
                            &lt;%&ndash;筛选顺序：点击下拉按钮之后按时间筛选，然后根据关键词选择新闻&ndash;%&gt;
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="http://localhost:8088/timeoneweek">近一周</a></li>
                                <li><a href="http://localhost:8088/timeonemonth">近一个月</a></li>
                                <li><a href="http://localhost:8088/timehalfyear">近半年</a></li>
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
        </div>
    </center>
</div>
</body>
<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-content">
                    <h2>
                        新闻列表
                    </h2>
                    <small>搜索用时  (0.23秒)</small>
                    <div class="hr-line-dashed"></div>
                    <div class="search-result">
                        <c:forEach items="${newsList}" var="v" varStatus="st">
                            <tr>
                                <div class="hr-line-dashed"></div>
                                    <div class="search-result">
                                        <div style="white-space:normal; word-break:break-all;overflow:hidden;">
                                            <h2>
                                                    ${v.topics}
                                            </h2>
                                            <p>
                                                发布时间：${v.createdAt}   新闻来源:${v.screenName}   新闻真假：${v.label}
                                            </p>
                                            <p>
                                                <a class="btn" href="/newsdetail?id=${v.id}">查看新闻详情»</a>
                                                <a class="btn" href="/reposts/retweet?id=${v.id}">查看新闻传播链»</a>
                                            </p>
                                        </div>
                                    </div>
                                </div>


                            </tr>
                        </c:forEach>
                    </div>

                    <div class="hr-line-dashed"></div>


                </div>
            </div>
        </div>
</div>

<!-- 全局js -->
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>



<!-- 自定义js -->
<script src="https://www.jsdelivr.com/package/npm/content.js"></script>

<div id="main" style=""></div>
<script type="text/javascript">
    var myChart = echarts.init(document.getElementById('main'));

    //清空画布，防止缓存
    myChart.clear();


    option = {
        title: { text: '新闻转发关系图谱' },
        tooltip: {
            formatter: function (x) {
                return x.data.des;
            }
        },
        series: [
            {
                type: 'graph',
                layout: 'force',
                symbolSize: 80,
                roam: true,
                edgeSymbol: ['circle', 'arrow'],
                edgeSymbolSize: [4, 10],
                edgeLabel: {
                    normal: {
                        textStyle: {
                            fontSize: 16
                        }
                    }
                },
                force: {
                    repulsion: 2500,
                    edgeLength: [10, 50]
                },
                draggable: true,
                itemStyle: {
                    normal: {
                        color: '#4b565b'
                    }
                },
                lineStyle: {
                    normal: {
                        width: 2,
                        color: '#4b565b'

                    }
                },
                edgeLabel: {
                    normal: {
                        show: true,
                        formatter: function (x) {
                            return x.data.name;
                        }
                    }
                },
                label: {
                    normal: {
                        show: true,
                        textStyle: {
                        }
                    }
                },
                data: [
                    <c:forEach items="${re}" var="r" varStatus="st">
                    {
                        name: '${r.userScreenName}',
                        des: 'id：${r.id}<br/>位置：${r.postLocation}',
                        symbolSize: 100,
                        /*itemStyle: {
                            normal: {
                                color: 'orange'
                            }
                        }*/
                    },
                    </c:forEach>
                    {
                        name: '鳄鱼十三',
                        des: '测试<br/>位置：测试',
                        symbolSize: 100,
                        itemStyle: {
                            normal: {
                                color: 'red'
                            }
                        }
                    },

                    <%--<c:forEach items="${re}" var="r" varStatus="st">
                    {
                        name: '${r.repost}',
                        des: 'id：${r.id}<br/>位置：${r.location}',
                        symbolSize: 100,
                        itemStyle: {
                            normal: {
                                color: 'orange'
                            }
                        }
                    },
                    </c:forEach>--%>

                ],
                links: [
                    <c:forEach items="${re}" var="r" varStatus="st">
                    {
                        source: '鳄鱼十三',
                        target: '${r.userScreenName}',
                        name: '转发',
                        /*des: '侯亮平是高育良的得意门生'*/
                    },
                    </c:forEach>
                    /*{
                        source: '高育良',
                        target: '侯亮平',
                        name: '师生',
                        des: '侯亮平是高育良的得意门生'
                    }*/
                ]
            }
        ]
    };
    myChart.setOption(option);
</script>

</body>


</html>