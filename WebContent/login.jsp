<!DOCTYPE html>
<%@ page language="java" pageEncoding="utf-8"%>
<html>
  <head>
    <meta charset="utf-8">
    <title>登录</title>
    <style type="text/css">
    .login{
        position: relative;
        margin:200px auto;
        width: 400px;
        background: rgba(255,255,255,0.7);
        border-radius: 10px;
    }
    .login .user-title{
        text-align: center;
        padding:10px 0;
        border-bottom: 1px solid #ddd;
        font-size: 18px;
        font-weight: bold;
        color: #333;
    }
    .login .user-box{
        padding: 20px;
    }
    .login .user-item{
        position: relative;
        margin-bottom: 20px;
    }
    .login .user-item .user-content{
        padding: 10px 0 10px 50px;
        width: 308px;
        height: 18px;
        line-height: 18px;
        font-size: 15px;
        border: 1px solid #bdbdbd;
        outline: none;
    }
	.login .error{
		color :red;
	}
    .login #btn-submit{
        width: 100%;
        padding: 2px 0;
        text-align: center;
        font-size: 20px;
        display: inline-block;
        height: 40px;
        line-height: 40px;
        border: none;
        background: #F1C40F;
        font-weight: bold;
        color: #fff;
        outline: none;
        cursor: pointer;
        text-decoration: none;
    }
    .login .link-item{
        text-align: right;
        margin-top: 10px;
    }
    .login .link-item .link{
        margin-left: 10px;
        color: #555;
    }
	body{
    		background:#16A085 ;
    	}
    .click1{
        position:relative;
        color: #555;
        top:-40px;
        left:30px;
        cursor: pointer;
    }
    .click2{
        position:relative;
        color: #555;
        top:-40px;
        left:30px;
        cursor: pointer;
    }
    #admin{
    	display:none;
    }
   
        </style>
</head>
<body>
    <div class = "login">
    <form id="user" action="MainServlet" method="post" > 
        <div class="user-title">用户登录</div>
        <div class="user-box">
            <div class="user-item">
               <input type="text" class="user-content" id="name" name="username" placeholder="请输入用户名" autocomplete="off">    
            </div>
            <span class="error" id="name-error"></span>
            <div class="user-item">
                <input  type="password" class="user-content" id="pass" name="password" placeholder="请输入密码" autocomplete="off"> 
            </div>
            <span class="error" id="pass-error"></span>
            <input id="btn-submit" type="submit" value="登录"/>
                <div class="link-item">
                    <a href="./reg.jsp" class="link" target="_self">免费注册</a>
                </div>
        </div>
        <div class="click1">
    		 <a onclick="changeadmin()">我是管理员</a>
    	</div>
         </form>
         <form id="admin" action="adminServlet" method="post" > 
        <div class="user-title">管理员登录</div>
        <div class="user-box">
            <div class="user-item">
               <input type="text" class="user-content" id="name" name="username" placeholder="请输入用户名" autocomplete="off">    
            </div>
            <span class="error" id="name-error"></span>
            <div class="user-item">
                <input  type="password" class="user-content" id="pass" name="password" placeholder="请输入密码" autocomplete="off"> 
            </div>
            <span class="error" id="pass-error"></span>
            <input id="btn-submit" type="submit" value="登录"/>
            <div class="link-item">
                    <p href="/" class="link" target="_self">免费注册</p>
                </div>
        </div>
        <div class="click2">
    		 <a onclick="changeuser()">我是学生</a>
    	</div>
         </form>
    </div>
   <script type="text/javascript">
   function toVaild1(){
	        var name = document.getElementById("name");
	        var pass = document.getElementById("pass");
	        var passerror = document.getElementById("pass-error");
	        if(name.value =='' || pass.value ==''){
	            var txt = "请输入用户名或密码"
	            passerror.innerHTML=txt;
	            return false;
	        }else{
	        	passerror.innerHTML='';
	        }	     
   }
   function toVaild2(){
       var name = document.getElementById("name");
       var pass = document.getElementById("pass");
       var passerror = document.getElementById("pass-error");
       if(name.value =='' || pass.value ==''){
           var txt = "请输入用户名或密码"
           passerror.innerHTML=txt;
           return false;
       }else{
       	passerror.innerHTML='';
       }	     
}
   var admin = document.getElementById("admin");
   var user  = document.getElementById("user");
   function changeadmin(){
	   var admin = document.getElementById("admin");
	   var user  = document.getElementById("user");
	   admin.style.display = "block";
	   user.style.display = "none";
   }
   function changeuser(){
	   var admin = document.getElementById("admin");
	   var user  = document.getElementById("user");
	   admin.style.display = "none";
	   user.style.display = "block";
   }
</script>
</body>
</html>