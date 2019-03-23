<!DOCTYPE html>
<%@page language="java" pageEncoding="utf-8"%>
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
.find{
	margin:20px auto;
	width:60%;
	padding: 0 20px;
}
.find span{
	font-weight:300;
	font-size:20px;
	line-height:35px;
}
.find #input{
	padding: 10px 0 10px 50px;
    width: 308px;
    height: 18px;
    line-height: 18px;
    font-size: 15px;
    border: 1px solid #bdbdbd;
    outline: none;
    vertical-align: top;
}
.find #submit{
	vertical-align: top;
    width: 60px;
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
}
table{
  margin:20px auto;
  border-collapse:collapse;
  width:50%;
}
table, tr, td{
  border: 2px solid #1a2732;
}
table tr{
  height:50px;
}
table tr td{
	color:#1a2732;
	text-align:center;
}
table tr td a{
	color:#1a2732;
}
</style>
<body>
<div class="body">
	<div class="head">
	<span>图书管理系统</span>
	<ul>
		<li><div class="img"></div></li>
		<li><%=session.getAttribute("username") %></li>
		<li><a href="./login.jsp">退出</a></li>
	</ul>
	</div>
	<div class="nav">
		<ul>
			<li><a href="./ALLbookServlet">书目</a></li>
			<li class="hover"><a href="./found.jsp">查询</a></li>
			<li ><a href="./join.jsp">添加</a></li>
		</ul>
	</div>
	<div class="content">
		<form action="FoundServlet">
		<div class="find">
		<span>输入你想搜索的书名：</span>
		<input id="input" type="text" name="name"/>
		<input id="submit" type="submit" value="查找"/>
		</div> 
		</br>
		<table>
			<tr>
				<td>编号</td>
				<td>书名</td>
				<td>作者</td>
			</tr>
        	<tr> 
        		<td>${book.id}</td> 
            	<td>${book.name}</td>   
            	<td>${book.writer}</td>
        	</tr> 
        </table> 
		</form>
	</div>
</div>
</body>
</html>