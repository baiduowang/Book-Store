<%@ page language="java" import="java.util.*,daos.*,entity.*,java.text.*" pageEncoding="utf-8"%>
<!-- bookss.html -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>bookManagement</title>
	 <link rel="stylesheet" href="bookManagement.css">
	<style type="text/css">
	   body{
	   	background-color: #8e7979;
		margin:0px;
	   }
	          #all{
          	position:relative;
          	
          	width:900px;
          	margin-left:233px;
          }
          #logo{
          	position:absolute; 
          	font-style:white-space;
            position: absolute;
            top: 152px;
            left: 15px;
            color:#fff;
			font-size:22px;
          }
          #header1{
          	    position: absolute;
                top: 47px;
                left: 131px;
                color:#fff;
          }

          #bodyer{
          height:1000px;
          width:900px;		  
          	  
          }
          #bodyer_left{
          	position: relative;
		    float:left;
          	width:400px;
          	height:1000px;
          	padding-left: 16px;
            padding-right: 16px;
           background-image:url(images/center_bg.gif);
			background-color:#fff;
           
			
          }
		  #myabout_us{
		  font-size:13px;
		  }
          #myabout_us1{
          	width:340px;
          }
          #myabout_us2{
           position: absolute;
           top: 54px;
          left: 354px;
          }
          #myabout_us3{
          	padding-top: 15px;
          	height: 40px;
          }

            #footer{
            	position:relative;
            	
            }
            #footer_top{
		    	background-color: #fff;
            	color:#c7c8c8;
            	padding-left:20px;
            }
            #footer_logo1{
			   margin-top: -9px;
               height: 61px;
               margin-left: -14px;
               color: #c7c8c8;
              padding-left: 20px;
            }
            #footer_logo2{
			          color:#c7c8c8;
                      position: absolute;
                      top: 8px;
                      left: 530px;
					
                }
				  
          
         
       .right{
	height:1000px;
	width:388px;
	float:right;
	background-color:#F2EDE2;
	}
.top{
	margin-top:8px;}
.topleft1{
	font-size:13px;
	width:20px;
	color:#990000;
}

.GBKFUR{
	position:absolute;
	margin-top: -18px;
	margin-left: 223px;
	font-size:13px;}
/*设置SSD字体*/
.ssd{
}
.topcenter{
	margin-top:10px;}
.mycar{
	color:#A74633;
}
.topbottom{
	margin-left: 30px;
	margin-top:10px;}
.centercenter{
	font-size:12px;
	width:215px;
	height:90px;
	margin-left:10px;
	margin-top:10px;
}
.centerimage{
	height:83px;
	width:130px;
	position:absolute;
	margin-left:233px;
	margin-top:-93px;}
.centerbottom{
	margin-left: 30px;
	margin-top:20px;
	}
.bottomleft{
	height:auto;
	width:180px;}
.procucename{
	color:#D0B5B6;
	font-size:9px;
	margin-top:20px;
	margin-left:50px;}
.bottomimage1{
	margin:9px auto;
	width:130px;
	height:119px;
	background:url(new_prod_box.gif);	
	}
.promo_icon{
	position:absolute;
	margin-left:-16px;
	margin-top:0px;}
.thumb1{
	margin-left:36px;
	margin-top:15px;}
.bottomright{
	margin-top: -521px;
	margin-left:200px;
	width:170px;
  height: 800px;
	}
.p4{line-height:25px;
	margin-left:10px;
	font-size:16px;
	} 
a{
color:#fff;
}
a:link{
color:#fff;
text-decoration:none;
}
a:hover{
 color:purple;
}
a:visited{

}
#us1{
float:left;
}
#us2{
float:left;
margin-top:3px;
margin-left:8px;
font-size:15px;
}
.ss{
    background-color:#FF9900;
}

	
      #q1{
        width: 900px;
        height: 1000px;
       
       
    }
    .btn{
        width: 30px;
        height: 30px;
    }
    .btn:hover{
        background-color: yellow;
    }
    #i1{
        	 margin-left: 20px; 
        	margin-top:20px;
        	float:left;
height: 30px;

        }
        
#d1{
   width: 300px;
   height: 46px;
   float: left;
}
#d2{
   width: 496px;
   height: 1000px;
   /* float: left; */
}
.t1{
   background-image:url(images/new_prod_box.gif);
   background-repeat:no-repeat;
   background-size:100% 90%;
}
.r1{

	float:right;
}
#left{
		float: left;
     background-image: url(images/center_bg.gif);
	}
.product{
	list-style: none;
	display: flex;
	justigy-content:space-around;
	flex-wrap:wrap;
	font-size: 16px;
	
}
#d2>ul>li{
width:30%;
display: list-item;
}

	</style>
<script type="text/javascript"> 
function del(){

  var gnl=confirm("是否删除！");
  if(gnl==true){
  return true;
  
  }
  else{
  return false;
  }


}
</script> 
<script>
 window.onload=function choice(){
   <%Integer str=(Integer)session.getAttribute("verify3");%>
    if(<%=str%>!=null){
       if(<%=str%>==3){
       	 
          document.getElementById("superd").style.display = "inline-block";
       }
       else
       {
       	
       	  document.getElementById("admin").style.display="inline-block";
       }
   }
   else
   {
      alert("error");
   }
 }

</script>


</head>
<body>
     <div id="all">
	 <div id="heads">
	      <div id="header" >
	 	     <img src="images/header.jpg" height="181" width="900">
	      </div>
	      <div id="header1"> 
	      	<img src="images/logo.gif" height="40" width="100">
	      </div>
	      <div id="logo">
	 <!--
	     <span id="home"><a href="product_name.html">home</a></span>&nbsp;&nbsp;
	     <span id="about_us"><a href="about_us.html">about us</a></span>&nbsp;&nbsp;
	     <span class="aa"><a href="feature_books.html">books</a></span>&nbsp;&nbsp;
	     <span><a href="my_account.jsp">my account</a></span>&nbsp;&nbsp;
	     <span><a href="register.jsp">register</a></span>&nbsp;&nbsp;
	     <span><a href="spcial_gifts.html">prices</a></span>&nbsp;&nbsp;
	     <span><a href="contact_us.html">contact</a></span>
       &nbsp;&nbsp;<span><a href="shopping cart.html">shopping cart</a></span>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="my_account.jsp"><input type="button"  value="logout"/></a>
	      -->
	      <b>欢迎使用图书后台管理</b>
	      </div>

   </div>
	   <div id="bodyer">
	       <div id="bodyer_left">
	       <!--代码放里面-->
               	<div id="left">
		
         <div id="d2">
         <div style="margin-top:30px;width=244px;height: 41px; width: 501px">
         	<span style="width: 502px;font-size:22px;">商品管理
         	
         	<a href="addbook.jsp">
         	<input type="button" style="margin-left:50px;" value="添加商品">
         	
         	<a href="super_admin.jsp">
         	<input type="button"   id="superd" style="margin-left:10px; display:none; "  value="信息管理"></a>
         	<span  ><a href="admin2.jsp">
         	<input type="button" id="admin"   style="margin-left:10px;  display:none;" value="信息管理"></a></span>
         	<a href="my_account.jsp"><input type="button" style="margin-left:10px;" value="退出"></span></a>
         	
         	
         	
         </div>
         <br>
			 <ul class="product">
			 <%
			 
			  List<Book> list=(List<Book>)request.getAttribute("list");
			 %>
			 <%
			 if(list!=null){
			    for(int i=0;i<list.size();i++){
			 Book book=new Book();
			 book=list.get(i);
			 String bookname=book.getBookname();
			 String img=book.getImg();
			 String id=book.getId();
			 img="img/"+img;
			 %>
				<br><br>	   
			 	<li><span style="color:#000;"><center><b><%=bookname%></b></span>
			 	<center><img src=<%=img%> height="90" width="60">
                <br>             
               <a href="update_book.jsp?id=<%=id%>"><input type="hidden"/><input type="button" value="修改"/></a>
               &nbsp;&nbsp;&nbsp;
               <form action="deleteBook" method="post"  style="display:inline"  onsubmit="return del()">
               <input type="hidden" name="id" value=<%=id%>/>
               <input type="submit" id="bt" value="删除"/>
               </form>
			 	</li>
      <%
       }
     } 
      %>
	 
			 	<!--  <li><span style="color:#c7c8c8;">书的名字</span>
			 	<img src="images/about.gif" height="80" width="116">
                <br>
                              
               <a href="xiugai.html"><input type="button" value="修改"/></a>
               &nbsp;&nbsp;&nbsp;<a href=""><input type="button" value="删除"/></a>
                
			 	</li>

		
			
			 	<li><span style="color:#c7c8c8;">书的名字</span>
			 	<img src="images/about.gif" height="80" width="116">
                <br>
                              
               <a href="xiugai.html"><input type="button" value="修改"/></a>
               &nbsp;&nbsp;&nbsp;<a href=""><input type="button" value="删除"/></a>
                
			 	</li>
                 -->
			 </ul>
         </div>
        
         
	</div>
		      <!--放上面-->	 
	       </div>

	       <div id="bodyer_right"> 
	       	   <div class="right">
     <div class="top">
        <div class="toptop">
        	<span class="topleft1">&nbsp;&nbsp;&nbsp;language:&nbsp;</span>
            <span class="topright2"><img src="images/gb.gif" /><img src="images/fr.gif" style="margin-left: 3px;"/><img  src="images/de.gif" style="margin-left: 3px;"/></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="topleft3"><span class="topleft1">currency:</span>&nbsp;&nbsp;&nbsp;<div class="GBKFUR">GBK&nbsp;&nbsp;FUR&nbsp;&nbsp;</span><span id="ssd" class="ssd">USD</span></div>
            
        </div>
     	
         <div class="topcenter">
         	<span>&nbsp;&nbsp;&nbsp;<img  src="images/cart.gif"/><span class="mycar">&nbsp;&nbsp;My&nbsp;&nbsp;cart</span><span>3&nbsp;x&nbsp;items&nbsp;|</span><span class="topleft2">TOTAL:&nbsp;100$&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" class="topleft1">view&nbsp;cart</a></span></span>
         </div>
        <div class="topbottom">
        	<img  class="topimag" src="images/border.gif"/>
        </div>
    </div>
    <div class="center">
    	<div class="centertop">
        	<img src="images/bullet3.gif" /><span class="topleft1">&nbsp;About&nbsp;Out&nbspStore</span>
        </div>
        <div class="centercenter">
        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat nam explicabo dolorem similique, suscipit 
        quas repudiandae illum reiciendis.
        </div>
        <div class="centerimage"><img   src="images/about.gif"/></div>
        <div class="centerbottom">
        	<img src="images/border.gif"/>
        </div>
    </div>
    <div class="bottom">
    	<div class="bottomleft">
        	  <div class="promotions">
        		<img src="images/bullet4.gif" /><span class="topleft1">&nbsp;Promotions</span>
        	  </div>
              <div class="procucename">produce&nbsp;name</div>
              <div class="bottomimage1"><img class="thumb1" src="images/thumb1.gif" /><img class="promo_icon"src="images/promo_icon.gif" /></div>
               <div class="procucename">produce&nbsp;name</div>
              <div class="bottomimage1"><img class="thumb1" src="images/thumb2.gif" /><img class="promo_icon"src="images/promo_icon.gif" /></div>
               <div class="procucename">produce&nbsp;name</div>
              <div class="bottomimage1"><img class="thumb1" src="images/thumb3.gif" /><img class="promo_icon"src="images/promo_icon.gif" /></div>
        </div>
        <div class="bottomright">
            <div class="categories">
            <img src="images/bullet5.gif" /><span class="topleft1">&nbsp;Categories</span>
                    <div class="p4">
                        <p id = "p4"><img src="images/left_menu_bullet.gif" />accesories</p>
                        <p id = "p4"><img src="images/left_menu_bullet.gif" />books&nbsp;gifts</p>
                        <p id = "p4"><img src="images/left_menu_bullet.gif" />specials</p>
                        <p id = "p4"><img src="images/left_menu_bullet.gif" />hollidays&nbsp;gifts</p>
                        <p id = "p4"><img src="images/left_menu_bullet.gif" />accesories</p>
                        <p id = "p4"><img src="images/left_menu_bullet.gif" />books&nbsp;gifts</p>
                        <p id = "p4"><img src="images/left_menu_bullet.gif" />specials</p>
                        <p id = "p4"><img src="images/left_menu_bullet.gif" />hollidays&nbsp;gifts</p>
                        <p id = "p4"><img src="images/left_menu_bullet.gif" />accesories</p>
                        <p id = "p4"><img src="images/left_menu_bullet.gif" />books&nbsp;gifts</p>
                        <p id = "p4"><img src="images/left_menu_bullet.gif" />specials</p>
                    </div>
            </div>
              <div class="partners">
            <img src="images/bullet6.gif" /><span class="topleft1">&nbsp;Partners</span>
                    <div class="p4">
                        <p id = "p4"><img src="images/left_menu_bullet.gif" />accesories</p>
                        <p id = "p4"><img src="images/left_menu_bullet.gif" />books&nbsp;gifts</p>
                        <p id = "p4"><img src="images/left_menu_bullet.gif" />specials</p>
                        <p id = "p4"><img src="images/left_menu_bullet.gif" />hollidays&nbsp;gifts</p>
                        <p id = "p4"><img src="images/left_menu_bullet.gif" />accesories</p>
                        <p id = "p4"><img src="images/left_menu_bullet.gif" />books&nbsp;gifts</p>
                        <p id = "p4"><img src="images/left_menu_bullet.gif" />specials</p>
                        <p id = "p4"><img src="images/left_menu_bullet.gif" />hollidays&nbsp;gifts</p>
                        <p id = "p4"><img src="images/left_menu_bullet.gif" />accesories</p>
                     </div>
            </div>
        </div>
        
      </div>
    </div>
</div>
	       </div>
	   

	   <div id="footer">
	       <div id="footer_top">
	       <div id="footer_img">
	   	      <img src="images/footer_logo.gif" height="50" width="81">
	   	   </div>
           <div id="footer_logo1">
           	cssmbon
           </div>
          </div>
           <div id="img2">
	   	   <img src="images/footer_bg.gif" height="18" width="900">
	   	   </div>
	   	   <div id="footer_logo2" >
	   	      <span>home</span>&nbsp;&nbsp;<span>about us</span>&nbsp;&nbsp;<span>services</span>&nbsp;&nbsp;<span>privacy policy</span>&nbsp;&nbsp;<span>contact us</span>
	       </div>
		   <div>
		   </div>
	</div>
	</div>

</body>
</html>