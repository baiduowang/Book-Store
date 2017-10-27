<%@ page language="java" import="java.util.*,daos.*,entity.*,java.text.*" pageEncoding="utf-8" %>
<!-- addbook.html -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>增加图书</title>
	<style type="text/css">
      #d1{

              width:450px;
               height:350px;
               background-color:#66573f;
               margin:100px auto;
              
      }
       a{
      	text-decoration:none;
      }
	</style>
	<script type="text/javascript">
	function check(){
	var a1= document.getElementById("1").value;
	console.log(a1);
	var a2= document.getElementById("2").value;
	var a3= document.getElementById("3").value;
	var a4= document.getElementById("4").value;
	var a5= document.getElementById("5").value;
	var a6= document.getElementById("6").value;
	if(a1=="" || a1==null)
	{
		alert("请输入书名");
		return false;
	}
		else if(a2=="" || a2==null)
	{
		alert("请输入价格");
		return false;
	}
		else if(a3=="" || a3==null)
	{
		alert("请输入ISBN");
		return false;
	}
		else if(a1=="" || a1==null)
	{
		alert("请输入出版社");
		return false;
	}
		else if(a1=="" || a1==null)
	{
		alert("请选择图片");
		return false;
	}
	
	else{

		 alert("插入成功");
		 return true;
	}
}
</script>
	
	
</head>
<body>
<div id="d1" align="center">
<h2>增加图书</h2>
	<form action="addbook" method="post" onsubmit="return check();">
		书&nbsp;&nbsp;&nbsp;名：<input type ="text" name="bookname"   id="1"/><br><br>
		价&nbsp;&nbsp;&nbsp;格：<input type ="text" name="price"  id="2"/><br><br>
		I&nbsp;SB&nbsp;N：<input type ="text" name="isbn"    id="3"/><br><br>
		出版社：<input type="text" name="publish"   id="4"><br><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		上传图片：<input type="file" name="file" id="5"/><br><br>
		<a href=""><input type="submit" value="确定"  id="6"/></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="addgoods"><input type="button" value="取消"/></a>
	</form>
	</div>
</body>
</html>