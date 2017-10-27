<%@ page language="java" import="java.util.*,daos.*,entity.*,java.text.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>添加</title>
	<style type="text/css">
	body{
      background-color: #8e7979;
     }
      input
      {
      	margin-top: 8px;
      }
      #d0{
        height:624px;
          width:900px;  
          border:1px solid #f8f;
          background-image:url(images/4.jpg);
          background-size:100% 100%;
            background-repeat: no-repeat;
          margin:0 auto;
         /*  opacity: 0.7; */
  }
  a{
    text-decoration:none;
  }
       #d1
      {
      	width: 350px;
      	height: 330px;
      	border: 1px solid #d1e8ff;
      	margin:0 auto;
      	margin-top: 100px;
    
      background-image:url(images/4.jpg);
      background-size:100% 100%;
      }
	</style>
	<script type="text/javascript">
	    
	</script>
</head>
<body >

<div align="center" id="d0">
<div id="d1">
	<h1>添加用户</h1>

	<form action="addUser" method="post">
	用户名:<input type="text" name="username"></input><br>
	密&nbsp;&nbsp;&nbsp;码:<input type="password" name="password"></input><br>
      手&nbsp;&nbsp;&nbsp;机:<input type="phone" name="phone"></input><br>

    <input type = "radio" name = "kind" value="admin">普通管理
    <input type = "radio" name = "kind" value="user" checked>用户<br>
	<input type="submit" value="确定">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="super_admin.jsp"><input type="button" value="取消"></a>
	<p id="msg" style="color:red;">${msg2} </p>
	</form>
	</div>
	</div>
</body>
<html>