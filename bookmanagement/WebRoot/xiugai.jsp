<!--xiugai.html -->
<%@ page language="java" import="java.util.*,dao.*,entity.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>zhuce</title>
	<style type="text/css">
	/* body{
		background-image: url(images/thumb1.gif);
	} */
   body{
      background-color: #8e7979;
     }
      input{
      	margin-top: 8px;
      }
      #d0{
        height:624px;
          width:900px;  
          border:1px solid #f8f;
          background-image:url(images/cb0bc3c0e8b97756efb7e84eaa78097a.jpg);
          background-size:100% 100%;
            background-repeat: no-repeat;
          margin:0 auto;
          opacity: 0.7;
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
    color:red;
      background-image:url(images/cb0bc3c0e8b97756efb7e84eaa78097a.jpg);
      background-size:100% 100%;
      }
     
	</style>
<script type="text/javascript">
function sb1(){
          var username = document.getElementById("1").value;
          var password = document.getElementById("2").value;
          if(username==null ||username==""){
               alert("请输入用户名");
              
               return false;
           }
           if(password==null || password==""){
              alert("请输入密码");
            
              return false;
          }
     
      
      var name = document.getElementById("3").value;
        if(name == ""){

         alert("电话不能为空！");
       
        return false;
        }
          if(name.length!=11)
        {
            alert("电话长度必须为11位！");
            return false;
        } 
        return true;
    }

  	</script>

</head>
<body >
<div align="center" id="d0">
<div id="d1">
<h1>${msg4}</h1>
	<h3>修改用户信息</h3>
	<%User user=(User)request.getAttribute("user");
	  String username=user.getUsername();
	  String password=user.getPassword();
	  String phone=user.getPhone();
	  String id=user.getId();
	%>
	<form action="update" method="post" onsubmit="return sb1();">
	      <input type="hidden" name="id" value="<%=id%>"/>
	用户名:<input type="text" name="username" id="1" value=<%=username%> /><br>
	密&nbsp;&nbsp;&nbsp;码: <input type="password" name="password" id="2" value=<%=password%> /><br>
	手&nbsp;&nbsp;&nbsp;机: <input type="text" name="phone"  id="3" value=<%=phone%> /><br>
	
	<br/>
	&nbsp;&nbsp;&nbsp;
	<input type="submit" value="确定"/>&nbsp;&nbsp;
	<a  href="super_admin.jsp"><input type="button" value="取消"/></a>
	 &nbsp;&nbsp;<a href="my_account.jsp" id="d4"><input type="button" value="退出"/></a>
	</form>
	
	</div>
	</div>
	 
</body>
</html>