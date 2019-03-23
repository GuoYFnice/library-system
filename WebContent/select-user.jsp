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
	color: #fff;
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
#text{
	margin:20px auto;
	color:#1a2732;
	width:100px;
	height:20px;
	text-align:center;
	line-height:20px;
	font-weight:700;
	font-size:20px;
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
			<li><a href="./UserALLbookServlet">可借阅</a></li>
			<li><a href="./found-user.jsp">查询</a></li>
			<li class="hover"><a href="./userSelectServlet">已借阅</a></li>
		</ul>
	</div>
	<div class="content">
	    <div id="text">已借阅</div>
		<table> 
			<tr>
				<td>编号</td>
				<td>书名</td>
				<td>作者</td>
				<td></td>
			</tr>
			<c:forEach items="${select}" var="usr" varStatus="idx"> 
        	<tr> 
        		<td>${usr.id}</td> 
            	<td>${usr.name}</td>   
            	<td>${usr.writer}</td>
            	<td><a href='ReturntbookServlet?name=${usr.name}&id=${usr.id}&writer=${usr.writer}'>归还</a></td>
        	</tr> 
        	</c:forEach>
		</table>
	</div>
</div>
</body>
</html>