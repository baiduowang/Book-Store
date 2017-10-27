<%@ page language="java" import="java.util.*,dao.*,entity.*,java.text.*" pageEncoding="utf-8"%>
<!-- guanli.html -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>管理员页面</title>
	<style type="text/css">
  body{
      background-color: #8e7979;
     }
        #d1{
          margin-top: 100px;
          margin:100px auto;
          background-color: #f5efed;
          width: 600px;
          height: auto;
          <!--background-image: url(images/59d5008c3ca43e3b60ebefdba8b3ccae.jpg);-->
          background-size: 100% 100%;
          background-repeat: no-repeat;
          color:#0f0;
          opacity: 0.7;
        }
        .search-content{
        	width: 800px;
        	height: 50px;
        	margin:0 auto;
        }
        .result-wrap{
        	margin:0 auto;

        }
        a{
        	border:1px solid #ccc;
        	 text-decoration:none;
        }
       
		 #t1{
		  border: 1px solid #c6b9b5;
	      padding:0 0;
	      color:#0f0;
		 
		 }
#d4{
position:relative;
left:260px;
}
.form{
 display:inline;
}
			</style>
	<script type="text/javascript">
		  		<%Integer a=(Integer)session.getAttribute("verify3");%>
		    	window.onload=function(){
		        	if(<%=a%>!=3){
		         		fun1();
		         		}
		    	}
		    	function fun1(){
		        	window.location.href="login.jsp";
		    	}		    
		</script>
			
			
</head>
<body>

	<div id="d1">
		 <th><h2 id="z1" style="text-align:center">管理员</h2></th>
            <div class="search-content">
                <form action="look" method="post">
                <h3 style="text-align:center">查询界面</h3>
               <!--  
                    <table class="search-tab" >
                            
                            <th width="70">关键字:</th>
                            <td><input class="" placeholder="关键字" name="keywords" value="" id="" type="text"></td>
                            <td><input class="" name="sub" value="查询" type="submit"></td>
                            
                       
                    </table>
                 -->   
                </form>
            </div>
       <div class="result-wrap" align="center">
          
            <form name="myform" id="myform" method="post">
                
                <div class="result-content">
             
                    <table class="result-tab" width="80%" cellspacing="0" cellpadding="0">
                        <tr id="t1">
                            <th class="tc" width="5%" id="t1"><input class="allChoose" name="" type="checkbox"></th>
                            <th id="t1">ID</th>                          
                            <th id="t1">用户名</th>
                            <th id="t1">手机</th>
                            <th id="t1">操作</th>

                        </tr>
                             <%
              List<User> list=(List<User>)request.getAttribute("list");
             %>
                        <%for(int i=0;i<list.size();i++){
                              User user=list.get(i);              
                             %>                           
                             <tr id="t1">                     
                             <td class="tc" width="5%" id="t1"><input class="allChoose" name="" type="checkbox"></td> 
                               <td id="t1"><%=user.getId()%></td>
                             <td id="t1"><%=user.getUsername()%></td>
                             <td id="t1"><%=user.getPhone()%></td>
                             <td id="t1">
                               <span>
                               <form action="jumpUpdate" method="post" class="form">                        
                               <input type="hidden" value="<%=user.getId()%>" name="uid"/>
                                <!--  <a class="link-update" href="xiugai.jsp?">修改</a>-->
                                <input type="submit" value="修改">
                               </form>
                               </span>         
                               <input type="button" value="添加" onclick="javascript:window.location.href='addUser.jsp'"/>
                             <span>
                                 <form action="delete" method="post" class="form">
                                    <input type="hidden" value="<%=user.getId()%>" name="uid"/>                       
                               <input type="submit" value="删除" onclick="return confirm('是否删除')">
                                 </form>
                              </span>   
                            </td>
                            </tr>
                         <%
                          }
                         %>
                        
                       
                        
                                              	
                       </table>
                  <!--    <div class="list-page" align="center">
                        <a href="">首页</a>
                        <a href="">上一页</a>
                        <a href="">01</a>                            
                        <a class="current" href="">02</a>
                        <a href="">……</a>  
                        <a href="">10</a>     
                        <a href="">下一页</a>
                        <a href="">尾页</a>
                    </div>
                    -->
                       
                   <br> <a href="super_admin.jsp" id="d4"><input type="button" value="返回"/></a>
                    
                </div>
                
            </form>
        </div>
    </div>

</body>
</html>
