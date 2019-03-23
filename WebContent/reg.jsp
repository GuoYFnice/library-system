<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>注册</title>
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
    		background: #16A085;
    	}
        </style>
</head>
<body>
    <form action="joinservlet" method="post" onsubmit="return toVaild()"> 
    <div class = "login">
        <div class="user-title">注册</div>
        <div class="user-box">
            <div class="user-item">
               <input class="user-content" id="name" name="regname" placeholder="请输入用户名" autocomplete="off">    
            </div>
            <span class="error" id="name-error"></span>
            <div class="user-item">
                <input  type="password" class="user-content" name="regpassword" id="passone" placeholder="请输入密码" autocomplete="off"> 
            </div>
            <span class="error" id="passone-error"></span>
            <div class="user-item">
                <input  type="password" class="user-content" id="passtwo" placeholder="请再次输入密码" autocomplete="off"> 
            </div>
            <span class="error" id="passtwo-error"></span>
 
            <input id="btn-submit" type="submit" value="注册"/>  
            <div class="link-item">
                    <a href="./login.jsp" class="link" target="_self">去登陆</a>
             </div>
        </div>
    </div>
    </form>
    <script type="text/javascript">
    function toVaild(){ 
        var name = document.getElementById("name");
        var passone = document.getElementById("passone");
        var passtwo = document.getElementById("passtwo");
        var nameerror = document.getElementById("name-error");
        var passoneerror = document.getElementById("passone-error");
        var passtwoerror = document.getElementById("passtwo-error");
        if(name.value ==''){
            var txt = "请输入用户名"
            nameerror.innerHTML=txt;
            return false;
        }else{
        	nameerror.innerHTML='';
        }
        if(passone.value ==''){
            var txt = "请输入密码"
            passoneerror.innerHTML=txt;
            return false;
        }else{
        	passoneerror.innerHTML='';
        }
        if(passtwo.value ==''){
            var txt = "请再次输入密码"
            passtwoerror.innerHTML=txt;
            return false;
        }else if(passone.value !=passtwo.value){
            var txt = "两次密码不同"
            passtwoerror.innerHTML=txt;
            return false;
        }else{
        	passtwoerror.innerHTML='';
        }
    }
</script>
</body>
</html>