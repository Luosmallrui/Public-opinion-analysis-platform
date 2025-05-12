<%--
  Created by IntelliJ IDEA.
  User: Cristiano
  Date: 2022/8/18
  Time: 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>新闻传播路径可视化</title>
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/echarts/4.2.1-rc1/echarts.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
        html, body, #main { height: 100%; width: 100%; margin: 0; padding: 0 }
    </style>
</head>
<body background="https://images5.alphacoders.com/127/1270260.jpg"
      style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">
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
                            <a href="http://113.54.221.70:8088/reposts/list">新闻传播链</a>
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

                </div>

            </nav>
        </div>
    </center>
</div>

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
                        des: '微博id：${r.id}<br/>位置：${r.postLocation}',
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
                        des: '测试111<br/>位置：test',
                        symbolSize: 100,
                        itemStyle: {
                            normal: {
                                color: 'red'
                            }
                        }
                    },

                ],
                links: [
                    <c:forEach items="${re}" var="r" varStatus="st">
                    {
                        source: '鳄鱼十三',
                        target: '${r.userScreenName}',
                        name: '转发：${r.text}',
                        des: '转发时间：${r.createdAt}'
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