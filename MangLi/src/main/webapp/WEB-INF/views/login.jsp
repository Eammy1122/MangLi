<%--
  Created by IntelliJ IDEA.
  User: HeZhiLing
  Date: 2017/10/18
  Time: 18:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Title</title>
        <script src="static/js/jquery-3.1.1.min.js"></script>
        <script src="static/js/bootstrap.js"></script>
        <link type="text/css" rel="stylesheet" href="static/css/bootstrap.min.css">
        <link type="text/css" rel="stylesheet" href="static/css/login.css">
        <script src="static/js/login.js"></script>
    </head>
    <body class="container-fluid">
    <header style="margin:0px;padding: 0px">
        <nav class="navbar navbar-inverse" style="padding: 0;margin: 0" >
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <div class="navbar-brand">MangLi</div>
                </div>
                <div class="collapse navbar-collapse" id="bs-example">
                    <ul class="nav navbar-nav" id="head_menu">
                        <li><a>首页</a></li>
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
                        <li><a href="#" id="state">登录 | 注册</a></li>
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
    <h2 class="page-header">Welcome come to login MangLi</h2>
    <div class="col-md-4 col-md-offset-4" id="login">
        <form>
            <div class="form-group">
                <label>用户名</label>
                <input type="text" id="userName" class="form-control" placeholder="请输入用户名">
                <p class="well l_p" style="height: 40px;padding: 8px"><i class="l_i"></i></p>
            </div>
            <div class="form-group">
                <label>密 码</label>
                <input type="password" id="pwd" class="form-control" placeholder="请输入密码">
                <p class="well l_p" style="height: 40px;padding: 8px"><i class="l_i"></i></p>
            </div>

            <div class="form-group">
                <input type="button" class="btn btn-primary" value="登录">
                <input type="button" class="btn btn-danger" value="注册">
            </div>
        </form>
    </div>
    <div class="col-md-4 col-md-offset-4" id="regist" style="display: none;">
        <form>
            <div class="form-group">
                <label>用户名</label>
                <input type="text" id="r_userName" class="form-control" placeholder="请输入用户名">
                <p class="well r_p"><i class="r_i"></i></p>
            </div>
            <div class="form-group">
                <label>密 码</label>
                <input type="password" id="r_pwd" class="form-control" placeholder="请输入密码">
                <p class="well r_p"><i class="r_i"></i></p>
            </div>
            <div class="form-group">
                <label>确认密码</label>
                <input type="password" id="r_pwdT" class="form-control" placeholder="请再次输入密码">
                <p class="well r_p"><i class="r_i"></i></p>
            </div>
            <div class="form-group">
                <input type="button" class="btn btn-primary" value="注册">
                <input type="button" class="btn btn-danger" value="登录">
            </div>
        </form>
    </div>
    <footer>

    </footer>
</body>
</html>
