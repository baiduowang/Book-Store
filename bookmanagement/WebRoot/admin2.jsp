<%@ page language="java" import="java.util.*,daos.*,entity.*,java.text.*" pageEncoding="utf-8"%>
<!-- guanli.html -->
<%! int pag=1; %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>管理员页面</title>
		<style type="text/css">
#d1 {
	margin-top: 100px;
	margin: 100px auto;
	background-color: #f5efed;
	width: 800px;
	height: auto;
}

.search-content {
	width: 800px;
	height: 50px;
	margin: 0 auto;
}

.result-wrap {
	margin: 0 auto;
}

a {
	border: 1px solid #ccc;
	text-decoration: none;
}

#t1 {
	border: 1px solid #c6b9b5;
	padding: 0 0;
}

#d4 {
	position: relative;
	left: -298px;
}

.form {
	display: inline;
}
</style>
		<script type="text/javascript">
		  <%Integer a=(Integer)session.getAttribute("verify3");%>
		    window.onload=function(){
		         if(<%=a%>!=2){
		         fun1();
		         }
		    }
		    function fun1(){
		        window.location.href="my_account.jsp";
		    }
		    
		    
		</script>
	</head>
	<body>

		<div id="d1">
			<th>
				<h2 id="z1" style="text-align: center"> 
					普通管理
				</h2>
			</th>
			<div class="search-content">

				<form action="lookadmin" type="post">
					<table class="search-tab">

						<th width="70">
							关键字:
						</th>
						<td>
							<input class="" placeholder="关键字" name="keywords" value="" id=""
								type="text">
						</td>
						<td>
							<input class="" name="sub" value="查询" type="submit">
						</td>
						<input type="hidden" name="looksuper" value="2"></input>
						<td>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="addgoods"><input type="button" value="商品管理" ></input></a>
						</td>
					</table>
				</form>
			</div>
			<div class="result-wrap" align="center">

				<form name="myform" id="myform" method="post">

					<div class="result-content">

						<table class="result-tab" width="80%" cellspacing="0" cellpadding="0">
							<tr id="t1">

								<th id="t1">
									ID
								</th>
								<th id="t1">
									用户名
								</th>
								<th id="t1">
									手机
								</th>
								<th id="t1">
									级别
								</th>
							</tr>
							
							<%
							UserAdminDao daos = new UserAdminDao();
							
							if(request.getAttribute("pag")!=null){
								pag = (Integer)(request.getAttribute("pag"));
							}
                 			List<User> list=(List<User>)daos.findAll(pag);              
                            for(int i=0;i<list.size();i++){
                              User user=list.get(i);
                                          
                             %>
							<tr id="t1">

								<td id="t1"><%=user.getId()%></td>
								<td id="t1"><%=user.getUsername()%></td>
								<td id="t1"><%=user.getPhone()%></td>
								<td id="t1"><%=user.getLevel()%></td>														
							</tr>
							<%
                          }
                         %>
						</table>
					</div>
					
			</div>
			<div style="margin-left:360px" >
				<input type="button" value="上一页" onclick="pre();"/>
			
				<input type="button" value="下一页" onclick="next()" />
				
			</div>
			<div style="margin-left: 670px; margin-top: 20px;">
				<a href="login.jsp"><input type="button" value="退出" /></a>
			</div>
		</div>
		<script type="text/javascript">
			function pre(){
			    if(<%=pag%><=1){
			     alert("已经是最前一页");
			   }else{
		    	
		    	window.location.href = "pageadmin1?pages="+<%=pag%>;
		        }
		       } 
		    function next(){
		    	 <%UserAdminDao dao1=new UserAdminDao();
			   int sum=dao1.sumUser();
			 %>
			  if(<%=pag%>><%=Math.ceil(sum/6)%>){
			    alert("已经是最后一页");
			   }else{
		    	window.location.href = "pageadmin?pages="+<%=pag%>;
		    	}
		    }
		</script>
	</body>
</html>
