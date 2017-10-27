<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>图书管理登录</title>
	<style type="text/css">
	body{
	 background-color:#8e7979;
	}
	*{
	margin:0;
	padding:0;
	}
	#d0{
	      height:668px;
          width:900px;	
          border:1px solid #f8f;
          background-size:100% 100%;
          background-repeat: no-repeat;
          margin:0 auto;
	   }
	
      input
      {
      	margin-top: 8px;
      	
      }
      #d2{
      width:900px;
      height:181px;
      background-image:url(images/header.jpg)
      }
      #d3{
      height:486px;
      width:548px;
      background-size:100% 100%;
      background-image:url(images/leftbg.png);
      float:left;
      
      }
      #d1
      {
        padding-top: 39px;
        width: 350px;
        height: 250px;
        border: 1px solid #d1e8ff;
        margin:0 auto;
        color:white;
        background-image:url(images/2.png);
        background-size:100% 100%;
        float: left;
      }
      #d4{
      	width:352px;
      	height:196px;
      	background:red;
      	float:left;
      	background-image:url(images/rightbg.png);
      	background-size:100% 100%;
      }
      #i1{
       padding-top:110px;
       color:#f8f;
      }
      #p1{
        font-size:30px;
        font-famliy:微软雅黑，黑体;
        color:black;
      }
	</style>
	<script type="text/javascript"></script>

	<script>
	setTimeout("GetID()",2000);
	function GetID()
	{
		var id = document.getElementById("msg");
		id.style.display = "none";
	}
	</script>

</head>
<body >
<div id="d0">
  <div id="d2"><H1 id="i1">欢迎使用图书管理系统</H1></div>
  <div id="d3"><center><br><p id="p1">时间一直在走，没有尽头</p><br><p id="p1">只有路口!</p></div>
  <div align="center" id="d1"><br><h1>图书管理系统登录</h1>
	<form action="login" method="post">
	用户名:<input type="text" name="username"></input><br>
	密&nbsp;&nbsp;&nbsp;码:<input type="password" name="password"></input><br>
    <input type = "radio" name = "kind" value="super">超级管理
    <input type = "radio" name = "kind" value="admin">普通管理
    <input type = "radio" name = "kind" value="user" checked>用户<br>
	<input type="submit" value="确定">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="注册" onclick="script:window.location.href='register.jsp'">
	<p id="msg" style="color:red;">${msg}</p>
	</form>
	</div>
	<div id = "d4"></div>
	</div>
</body>
<html>