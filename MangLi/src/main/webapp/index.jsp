<%--
  Created by IntelliJ IDEA.
  User: HeZhiLing
  Date: 2017/10/18
  Time: 17:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Index</title>
    <meta charset="UTF-8">
    <script src="static/js/jquery-3.1.1.min.js"></script>
    <script src="static/js/bootstrap.js"></script>
    <link type="text/css" rel="stylesheet" href="static/css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="static/css/font-awesome.min.css">
    <link type="text/css" rel="stylesheet" href="static/css/index.css">
    <script src="static/js/index.js"></script>
    <script src="static/js/cookie_util.js"></script>
</head>
<body class="container-fluid">
    <header>
        <nav class="navbar navbar-inverse navbar-fixed-top" >
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
                        <li><a>功能菜单</a></li>
                        <li><a>热门工作</a></li>
                        <li><a>照片墙</a></li>
                        <li><a>联系我们</a></li>
                        <li><a>我要投诉</a></li>
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
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="exampleModalLabel">修改密码</h4>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label for="recipient-name" class="control-label">请输入新密码:</label>
                        <input type="text" class="form-control" id="psw1">
                        <p class="well well-sm p" style="margin-top:5px;height:40px;"><i class="i"></i></p>
                    </div>
                    <div class="form-group">
                        <label for="message-text" class="control-label">请确认新密码:</label>
                        <input type="password" class="form-control" id="psw2">
                        <p class="well well-sm p" style="margin-top:5px;height:40px;"><i class="i"></i></p>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary save">Save change</button>
            </div>
        </div>
    </div>
</div>
    <div id="homePage" style="display: block;">
        <h1 class="page-header">Home Page</h1>
        <ul id="home_head">
            <li>1</li>
            <li>2</li>
            <li>3</li>
            <li>4</li>
            <li>5</li>
            <li>6</li>
        </ul>

        <div id="home_foot">
            <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 0%;height: 5px">
                0
            </div>
        </div>
    </div>
    <div id="functions">
        <h1 class="page-header">功能菜单</h1>
        <div id="caidan">
            <p>
                <img src="static/img/index/geren.jpg"/>
                <span>个人中心</span>
                <b>OPEN</b>
            </p>
            <p>
                <img src="static/img/index/jianli.jpg"/>
                <span>发布简历</span>
                <b>OPEN</b>
            </p>
            <p>
                <img src="static/img/index/fabu.jpg"/>
                <span>发布招聘</span>
                <b>OPEN</b>
            </p>
            <p style="clear: left;margin-top: 7%">
                <img src="static/img/index/chaxun.jpg"/>
                <span>工作查询</span>
                <b>OPEN</b>
            </p>
            <p style="margin-top: 7%;">
                <img src="static/img/index/jifen.jpg"/>
                <span>积分商城</span>
                <b>OPEN</b>
            </p>
            <p style="margin-top: 7%;">
                <img src="static/img/index/dongtai.jpg"/>
                <span>动态圈</span>
                <b>OPEN</b>
            </p>
        </div>
    </div>
    <div id="hotJobs">

    </div>
    <div id="photo">
        <h1 class="page-header">我们在工作</h1>
        <div class="gallery" style="margin-left: 15%;">
            <img src="static/img/index/1000.jpg"/>
            <p class="tanchu">
                <span>Ren men</span>
                <span class="gal_small">haha</span>
            </p>
        </div>
        <div class="gallery">
            <img src="static/img/index/2000.jpg"/>
            <p class="tanchu">
                <span>Ren men</span>
                <span class="gal_small">haha</span>
            </p>
        </div>
        <div class="gallery">
            <img src="static/img/index/3000.jpg"/>
            <p class="tanchu">
                <span>Ren men</span>
                <span class="gal_small">haha</span>
            </p>
        </div>
        <div class="gallery" style="margin-left: 10%;">
            <img src="static/img/index/4000.jpg"/>
            <p class="tanchu">
                <span>Ren men</span>
                <span class="gal_small">haha</span>
            </p>
        </div>
        <div class="gallery">
            <img src="static/img/index/5000.jpg"/>
            <p class="tanchu">
                <span>Ren men</span>
                <span class="gal_small">haha</span>
            </p>
        </div>
        <div class="gallery">
            <img src="static/img/index/6000.jpg"/>
            <p class="tanchu">
                <span>Ren men</span>
                <span class="gal_small">haha</span>
            </p>
        </div>
    </div>
    <div id="contact">
        <h1 class="page-header">Stay connected
           <p style="font-size: 15px;">We’re ready when you are. The best way to start working with us is to fill out the form below, and we’ll get back to you within one business day.</p>
        </h1>
        <div class="row inner-content" style="width:98%;">
            <div class="col-lg-6 col-md-6 col-xs-6">
                <form role="form" class="container-fluid">
                    <div class="form-group container-fluid" style="margin-top: 30px;">
                        <input type="text" class="form-control flat-box" id="Inputname" placeholder="Enter Name">
                    </div>
                    <div class="form-group container-fluid">
                        <input type="email" class="form-control flat-box" id="InputEmail2" placeholder="Enter Email">
                    </div>
                    <div class=" form-group  container-fluid">
                        <textarea class="form-control container-fluid flat-box" placeholder="Message" style="height:100px;"></textarea>
                    </div>
                    <div class="container-fluid text-left">
                        <button class="btn btn-primary">Send</button>
                    </div>
                </form>
            </div>
            <div class="col-lg-6 col-md-6 col-xs-6">
                <div class="container-fluid">
                    <div id="canvas">map</div>
                    <div class="container-fluid  top-space comp-short-desc address">
                        <div class="container-fluid">
                            <i class="glyphicon glyphicon-map-marker"></i>Your company,349 street,london,wq
                        </div>
                        <div class="container-fluid">
                            <i class="glyphicon glyphicon-envelope"></i>  contact@mail.com
                        </div>
                        <div class="container-fluid">
                            <i class="glyphicon glyphicon-earphone"></i>121-2324
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="complain">
        complain
    </div>
</body>
</html>
