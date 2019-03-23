<!DOCTYPE html>
<%@page language="java" pageEncoding="utf-8"%>
<%@page import="javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<html>
<head>
	<title>图书管理系统</title>
</head>
<style>
*{
	margin: 0;
	padding: 0;
}
a{
	text-decoration: none;
}
.body{
	width: 100%;
	height: 100%;
}
.head{
	position: relative;
	top: 0;
	width: 100%;
	height:50px;
	line-height: 50px;
	background: #1a2732;
}
.head span{
	color: #ECF0F1;
	font-weight: 500;
	margin-left: 35px;
	font-size: 24px;
}
.head ul{
	position: absolute;
	right: 20px;
	display: inline-block;
	list-style: none;
	color: #ECF0F1;

}
.head ul li{
	display: inline-block;
	margin-left: 20px;
}
.head ul li a{
	color: #ECF0F1;
}
.head ul li .img{
	background:#fff;
	border-radius:50%;
	height:30px;
	width:30px;
	position:relative;
	top:9px;
	left:18px;
}
.nav{
	position: relative;
	top: 0px;
	left: 0;
	height: 720px;
	width: 200px;
	background: #394a59; 
	color: #ECF0F1;
	line-height: 50px;
	text-align: center;
}
.hover{
	background: #2e3b46;
}
.nav ul li:hover{
	background: #2e3b46;
}
.nav ul li a{
	color:#ECF0F1;
}
.content{
	background: #ECF0F1;
	height: 720px;
	width: 86%;
	position:absolute;
	top:50px;
	left:200px;
}
.join{
	width:60%;
	margin:50px auto;
}
.join div{
	width:100%;
	margin:10px auto;
}
.join div span{
	font-weight:300;
	font-size:20px;
	line-height:35px;
}
.join #id{
	padding: 10px 0 10px 50px;
	width: 308px;
    height: 18px;
    line-height: 18px;
    font-size: 15px;
    border: 1px solid #bdbdbd;
    outline: none;
    vertical-align: top;
}
#submit{
	vertical-align: top;
    width: 80px;
    padding: 2px 0;
    text-align: center;
    font-size: 20px;
    display: inline-block;
    height: 40px;
    line-height: 40px;
    border: none;
    background: #1a2732;
    font-weight: bold;
    color: #fff;
    outline: none;
    cursor: pointer;
    text-decoration: none;
    margin-left:340px;
    
}
</style>
<body>
<div class="body">
	<div class="head">
	<span>图书管理系统</span>
	<ul>
		<li><div class="img"></div></li>
		<li><%=session.getAttribute("username")%></li>
		<li><a href="./login.jsp">退出</a></li>
	</ul>
	</div>
	<div class="nav">
		<ul>
			<li><a href="./ALLbookServlet">书目</a></li>
			<li><a href="./found.jsp">查询</a></li>
			<li class="hover"><a href="./join.jsp">添加</a></li>
		</ul>
	</div>
	<div class="content">
		
		<div class="join">
		<form action="JoinbookServlet">
			<div><span>编号：</span><input id="id" type="text" name="id"/></div>
			<div><span>书名：</span><input id="id" type="text" name="name"/></div>
			<div><span>作者：</span><input id="id" type="text" name="writer"/></div>
			<input id="submit" type="submit" value="添加"/>
		</form>
		</div>
	</div>
</div>
</body>
</html>