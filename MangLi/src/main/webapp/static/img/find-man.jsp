<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link href="csss/chaxun.css" rel="stylesheet"/>
		<script src="js/find-man.js"></script>
	</head>
	<body id="body">
		<div id="top">
	  		<a href="" style="margin-left: 50%;">登录/注册</a>&nbsp;&nbsp;
	  		<a href="">个人中心</a>&nbsp;&nbsp;
	  		<a href="">发布简历</a>&nbsp;&nbsp;
	  		<a href="">发布工作</a>&nbsp;&nbsp;
	  		<a href="">信息查询</a>&nbsp;&nbsp;
	  		<a href="">首页</a>&nbsp;&nbsp;
	  	
	  	</div>
		<div id="div1">
			<div id="head">
				<img src="img/0.jpg"/>
				<p style="font-size: 30px;margin-left: 40%;margin-top:30px;color:red;">本地服务.</p>
				<div id="selt">
					<input type="text" name="select" placeholder="查找关键字" id="select" style="float:left;width: 80%;height: 70%;" value="" />
					<input type="button" name="but" id="but" style="float:left; width: 18%;height: 100%;" value="查找" />
				</div>
				<!--<a href="">打扫卫生</a>|<a href=""></a>|<a href=""></a>|<a href=""></a>-->
				<div id="schedule">
				<a href="work-find.jsp">信息查找</a>><a href="find-man.html">维修工</a>
				</div>
			</div>
			<div id="middle">
				
				<div id="work-address">
				
					排序方式
					<form action="paixu2Servlet" method="post">
					<input type="text" id="sheng" name="sheng" value="" placeholder=" 默认排序" list="li">
					<datalist id="li">					
					<option>按姓名</option>
					<option>按内容</option>
					<option>按地区</option>	
				</datalist>
				<input type="submit" name="but3" id="but3" value="确定" />
				</form>
               </div>
			
				<div id="worker1">
					<form action="workerServlet">
				     <c:forEach items="${list4}" var="list" begin="0" end="9">
					<p> <input type="submit" name="sub" id="sub" style="font-size:20px; border:none;cursor: pointer;background:#f3f1f1;color:red;" value=${list.slogan}> <br />
					 姓&nbsp;&nbsp;名：   ${list.userName}<br /> 
					 工作内容：  ${list.work_content}<br />
					<%--  工作时间： ${list.work_time}<br /> --%>
					 工作地点： ${list.address}<br />					
					  手&nbsp;&nbsp;机：${list.phone}<br />      
					
					 </c:forEach>	
					 </form>				
				</div>
			    <div id="worker2">
				  
				</div>
				<div id="advertising">
					
				</div>
				<div id="advertising2">
					
				</div>
			<!-- 	<div id="advertising3">
					
				</div>
				<div id="advertising4">
					
				</div> -->
				</form> 
		</div>
			<div id="foot-top">
				  <input type="button" name="bt0" id="bt0" value="首页" />
				  <input type="button" name="bt-top" id="bt-top" value="上一页" />
				  <input type="button" name="bt1" id="bt1" value="1" />
				  <input type="button" name="bt2" id="bt2" value="2" />
				  <input type="button" name="bt3" id="bt3" value="3" />
				  <input type="button" name="bt4" id="bt4" value="4" />
				  <input type="button" name="bt5" id="bt5" value="5" />
				  <input type="button" name="bt6" id="bt6" value="6" />
				  <input type="button" name="bt7" id="bt7" value="7" />
				  <input type="button" name="bt8" id="bt8" value="8" />
				  <input type="button" name="bt9" id="bt9" value="9" />
				  <input type="button" name="bt10" id="bt10" value="10" />
				  <input type="button" name="bt-bottom" id="bt-bottom" value="下一页" />
				  <input type="button" name="bt-last" id="bt-last" value="尾页" />
			</div>
			<div id="foot">
				<table id="table" >
	  			<tr><td width="100px" height="30px" style="font-size: 20px;">合作伙伴</td><td width="100px" height="30px" style="font-size: 20px;">合作伙伴</td><td width="100px" height="30px" style="font-size: 20px;">合作伙伴</td><td width="100px" height="30px" style="font-size: 20px;">合作伙伴</td></tr>
	  			<tr><td width="100px" height="30px">合作伙伴</td><td width="100px" height="30px">合作伙伴</td><td width="100px" height="30px">合作伙伴</td><td width="100px" height="30px">合作伙伴</td></tr>	 
	  			<tr><td width="100px" height="30px">合作伙伴</td><td width="100px" height="30px">合作伙伴</td><td width="100px" height="30px">合作伙伴</td><td width="100px" height="30px">合作伙伴</td></tr>	 
	  			<tr><td width="100px" height="30px">合作伙伴</td><td width="100px" height="30px">合作伙伴</td><td width="100px" height="30px">合作伙伴</td><td width="100px" height="30px">合作伙伴</td></tr>	 
	  			</table>
			</div>
		</div>
	</body>
</html>