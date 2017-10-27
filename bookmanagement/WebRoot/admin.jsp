<%@ page contentType="utf-8" language="java" import="java.util.*,dao.*,entity.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>管理员页面</title>
	<style type="text/css">
        #d1{
          margin-top: 100px;
        	margin:0 auto;
        	background-color: #f5efed;
        	width: 800px;
        	height: auto;
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
        }
       .list_page a{
       	margin:0 5px;
       	padding:2px 7px;
       	border:1px solid #ccc;
       	background:#f3f3f3;
       }
		 .list-page a:hover{
		 	background:#e4e4e4;
		 	border:1px solid #908f8f;
		 }
		#t1{
		     border: 1px solid #c6b9b5;
		}
		.search-tab{
			float: right;
		}
		 .list-page{
		 	margin-top: 50px;
		 }


			</style>
			<script type="text/javascript">
	       
			
			
			</script>
</head>
<body>

	<div id="d1">
		 <th><h2 id="z1" style="text-align:center">管理界面</h2></th>
            <div class="search-content">
                <form action="adminLook" method="post">
               
                    <table class="search-tab">
                        
                            <th width="70">关键字:</th>
                            <input type="hidden" name="level" value="user" >
                      
                            <td><input class="" placeholder="关键字" name="keywords" value="" id="" type="text"></td>
                            <td><input class="" name="sub" value="查询" type="submit"></td>
                            
                       
                    </table>
                </form>
            </div>
       <div class="result-wrap" align="center">
            <form name="myform" id="myform" method="post">
                
                <div class="result-content">
                    <table class="result-tab" width="80%">
                        <tr>
                           <!--   <th class="tc" width="5%" id="t1"><input class="allChoose" name="" type="checkbox"></th>-->
                            <th id="t1">ID</th>                       
                            <th id="t1">用户名</th>
                            <th id="t1">手机</th>
                        

                        </tr>
                         <%
                        // UserDaoImp dao=new UserDaoImp();
                         //List<User> list=dao.findByAll("user");
                         List<User> list=(List<User>)request.getAttribute("list2"); 
                         for(int i=0;i<list.size();i++){
                              User user=list.get(i);
                              String id=user.getId();
                              String username=user.getUsername();
                              String phone=user.getPhone();                      
                         %>
                         <tr id="t1">
                       <!--  <td class="tc" width="5%" id="t1"><input class="allChoose" name="" type="checkbox"><th>l</th>-->
                        	<th id="t1"><%=id%></th>
                        	<th id="t1"><%=username%></th>
                        	<th id="t1"><%=phone%></th>
                        	
                        </tr>
                        
                        <% 
                          }
                        %>
                                              	
                       </table>
                   
                </div>
            </form>
             <form action="loginAdmin" type="post">
                 <input type="submit" value="返回" > 
                 <input type="button" value="退出" onclick="script:window.location.href='login.jsp'">
                    </form>
        </div>
    </div>
</body>
</html>