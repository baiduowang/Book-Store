<%@ page language="java" import="java.util.*,dao.*,daos.*,entity.*,java.text.*" pageEncoding="utf-8"%>
<!-- xiugai.html -->
<!-- addbook.html -->
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>修改图书</title>
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
	<script>
	<%Integer str=(Integer)request.getAttribute("msg");%>
	   if(<%=str%>==1){
	    alert("修改成功");
	  }
	</script>
</head>
<body>
<div id="d1" align="center">
<h2><center>修改图书</h2>
    <% 
     String id=request.getParameter("id");
      BookDao dao=new BookDao();
     Book book= dao.findById(id);
     String bookName=book.getBookname();
     String price=book.getPrice();
     String isbn=book.getIsbn();
     String publish=book.getPublish();
     String img=book.getImg();
     img="img/"+img;
    %>
	<form action="updateBook" method="post">
	     <input type="hidden" name="id" value="<%=id%>" />
		书&nbsp;&nbsp;&nbsp;名：<input type ="text" name="bookName" value=<%=bookName%> /><br><br>
		价&nbsp;&nbsp;&nbsp;格：<input type ="text" name="price" value=<%=price%> /><br><br>
		I&nbsp;SB&nbsp;N：<input type ="text" name="isbn" value=<%=isbn%> /><br><br>
		出版社：<input type="text" name="publish" value=<%=publish%> /><br><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;上传图片：<input type="file" name="img"  />
	
		
		<br><br>
		<a href="books.jsp"><input type="submit" value="确定"/></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="addgoods"><input type="button" value="取消"/></a>
	</form>
	</div>
</body>
</html>