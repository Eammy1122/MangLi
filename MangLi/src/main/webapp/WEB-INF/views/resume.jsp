<%--
  Created by IntelliJ IDEA.
  User: HeZhiLing
  Date: 2017/10/24
  Time: 15:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Resume</title>
    <script src="static/js/jquery-3.1.1.min.js"></script>
    <script src="static/js/bootstrap.js"></script>
    <link type="text/css" rel="stylesheet" href="static/css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="static/css/resume.css">
    <script src="static/js/resume.js"></script>
    <script src="static/js/cookie_util.js"></script>
</head>
<body class="container">
<header>
    <nav class="navbar navbar-default navbar-fixed-top" >
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <div class="navbar-brand" style="margin-left: 25px">MangLi</div>
            </div>
            <div class="collapse navbar-collapse" id="bs-example">
                <ul class="nav navbar-nav" id="head_menu">
                    <li style="margin-left: 25px"><a>首页</a></li>
                    <li><a>个人中心</a></li>
                    <li><a>发布简历</a></li>
                    <li><a>发布工作</a></li>
                    <li><a>工作查询</a></li>
                    <li><a>积分商城</a></li>
                    <li><a>动态圈</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="" class="dropdown-toggle" data-toggle="dropdown">
                            <span id="name2">UserName</span><span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Action</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#" class="btn-lg" data-toggle="modal" data-target="#myModal">修改密码</a></li>
                        </ul>
                    </li>
                    <li style="margin-right: 35px"><a href="toLogin" id="state">登录 | 注册</a></li>
                </ul>
            </div>
        </div>
    </nav>
</header>
<div class="content">
    <div class="row" style="margin: 0;">
        <div class="con-body" style="width:20%;border: 1px solid gainsboro;float: left;background-color: #fafafa;">
            <div class="con-left-head">
                <p>我的简历</p>
                <p class="glyphicon glyphicon-edit" style="width: 10%;margin-top: 3px;margin-left: 10%;cursor: pointer">

                </p>
                <p style="width: 90%;font-size: 15px;">
                    更新:<span>2017-10-24</span>
                </p>
                <p style="width: 90%;font-size: 15px;margin-top: -5px">
                    公开:<span>对所有人公开</span>
                </p>
                <button>更新</button>
                <button style="margin-left: 10%">预览</button>
            </div>
            <div class="con-left-foot">
                <ul>
                    <li>
                        <p class="glyphicon glyphicon-user"></p>
                        <span>个人信息</span>
                        <span class="glyphicon glyphicon-ok" style="margin-left: 20%;color:gold;"></span>
                    </li>
                    <li>
                        <p class="glyphicon glyphicon-record"></p>
                        <span>求职意向</span>
                        <span class="glyphicon glyphicon-ok" style="margin-left: 20%;color:gold;"></span>
                    </li>
                    <li>
                        <p class="glyphicon glyphicon-briefcase"></p>
                        <span>工作经验</span>
                        <span class="glyphicon glyphicon-ok" style="margin-left: 20%;color:gold;"></span>
                    </li>
                    <li>
                        <p class="glyphicon glyphicon-education"></p>
                        <span>教育经历</span>
                        <span class="glyphicon glyphicon-ok" style="margin-left: 20%;color:gold;"></span>
                    </li>
                    <li>
                        <p class="glyphicon glyphicon-home"></p>
                        <span>在校情况</span>
                        <span class="glyphicon glyphicon-ok" style="margin-left: 20%;color:gold;"></span>
                    </li>
                    <li>
                        <p class="glyphicon glyphicon-thumbs-up"></p>
                        <span>技能特长</span>
                        <span class="glyphicon glyphicon-ok" style="margin-left: 20%;color:gold;"></span>
                    </li>
                    <li>
                        <p class="glyphicon glyphicon-list-alt"></p>
                        <span>附加信息</span>
                        <span class="glyphicon glyphicon-ok" style="margin-left: 20%;color:gold;"></span>
                    </li>

                </ul>
            </div>
        </div>
        <div class="con-right con-body" style="width: 79%;margin-left:1%;float: left;">
            <ul>
                <li style="height: 140px;">
                    <div class="col-md-2">
                        <img src="static/images/resume/24.jpg" style="width: 84px;height: 104px;margin-top: 15px;margin-left: 20%"/>
                    </div>
                    <div class="col-md-10">
                       <div class="name">
                           <span>UserName</span>
                       </div>
                        <div class="glyphicon glyphicon-edit edit"></div>
                        <p style="display: block;clear: both">现居住广州&nbsp;│&nbsp;暂无经验&nbsp;│&nbsp;男&nbsp;│&nbsp;22 岁 (1994/11/22)&nbsp;│&nbsp;目前正在找工作</p>
                        <p>
                            <span class="glyphicon glyphicon-envelope"></span>
                            <span>542909546@qq.com</span>
                            <span class="glyphicon glyphicon-phone" style="margin-left: 20%"></span>
                            <span>13257096097</span>
                        </p>
                    </div>
                </li>
                <li>
                    <h4>
                        <span class="glyphicon glyphicon-jpy"></span>
                        <span style="margin-left: 10px">目前年收入</span>
                        <span style="font-size: 10px;color: black">(包含基本工资、补贴、奖金、股权收益等)</span>
                    </h4>
                    <div class="glyphicon glyphicon-edit edit" style="margin-left: 9%"></div>
                    <div class="xinxi-mon">
                        <span class="glyphicon glyphicon-exclamation-sign"></span>
                        <span style="font-size: 10px;margin-top: 10px;margin-left: 1%">
                            完善年收入情况，让HR更了解你！
                        </span>
                    </div>
                    <div class="xinxi-monChange">
                        <div class="xinxi1">
                            <span>目前年收入</span>
                            <input type="text">
                            <span>万元</span>
                        </div>
                        <div class="xinxi2">
                            <button>保存</button>
                            <button>取消</button>
                        </div>
                    </div>
                </li>
                <li>3</li>
                <li>4</li>
                <li>5</li>
                <li>6</li>
                <li>7</li>
                <li>8</li>
            </ul>
        </div>
    </div>
</div>
</body>
</html>
