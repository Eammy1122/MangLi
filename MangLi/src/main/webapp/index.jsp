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
    <title>Title</title>
    <script src="static/js/jquery-3.1.1.min.js"></script>
    <script src="static/js/bootstrap.js"></script>
    <link type="text/css" rel="stylesheet" href="static/css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="static/css/index.css">
    <script src="static/js/index.js"></script>
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
                        <li style="margin-right: 35px"><a href="#" id="state">登录 | 注册</a></li>
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
    <div id="homePage" style="margin-top: 80px">
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
</body>
</html>
