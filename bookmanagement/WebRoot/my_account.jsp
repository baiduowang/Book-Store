<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" import="java.util.*,java.text.*"%>
<!-- bookss.html -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>bookManagement</title>
	<style type="text/css">
	   body{
	   	background-color: #8e7979;
		margin:0px;
	   }
      #i1{
          margin-left: 20px;
          margin-top:20px;
          float:left;

        }
        p{
            font-size:16px;
        }
	          #all{
          	position:relative;
          	width:900px;
          	margin-left:233px;
          }
          #logo{
          	position:absolute; 'm'
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
          }
          #bodyer_left{
          	position: relative;
		    float:left;
          	width:480px;
          	height:1000px;
          	padding-left: 16px;
            padding-right: 16px;
          	background-image:url(images/center_bg.gif) ;
		
            background：-webkit-linear-gradient(left,rgba(255,0,0,1),rgba(255,0,0,1));
			
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
            	background-color: #fff;
            	color:#c7c8c8;
            }
            #footer_top{
            	padding-left:20px;
            }
            #footer_logo1{
            	height:60px;
            }
            #footer_logo2{
                   position: absolute;
                   top: 4px;
                  left: 435px;
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
	}
.p4{line-height:8px;
  margin-left:10px;
  font-size:16px;
  text-align: left;
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
#i2{
    border:1px dashed #8e7979;
    margin-top: -50px;
    /* border: 1px solid red; */
    width: 270px;
    height: 340px;
    margin-left: 110px;
  }
  #t1{
    /* border: 1px solid red; */
    width: 450px;
    height: 200px;
    

  }
  
  #d1{
    height: 50px;
  }
  
  #i3{
    background-image: url(images/register_bt.gif);
    background-repeat: no-repeat;
    background-size: 65%;
    font-size: 16px;
  }
  #i4{
    height: 30px;
     
  }
  #i5{
   background-image: url(images/contact_bt.gif);
   background-repeat: no-repeat;
   margin-left:350px;
   font-size : 16px;

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
<body>
     <div id="all">
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
	      Welcome to BookStore&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	      <a href="lunbo.html">Rotation</a>
	      </div>


	   <div id="bodyer">
	       <div id="bodyer_left">
	       <!--代码放里面-->
                 <div id="d1"><img src="images/bullet1.gif" height="25" width="26" id="i1">
                  <p style="color:red;" id="i1">My account</p>
    </div>
    <div id="t1"><p id = 'p4'>
    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta incidunt obcaecati molestiae quidem dignissimos assumenda ad commodi. Minus nostrum, sint amet accusantium, reprehenderit, consequuntur eaque eum magnam similique veniam doloremque.</p></div>
    

    <div id="i2">
      <div id="i4"><p id="i3">&nbsp;&nbsp;&nbsp;&nbsp;login into your count</p></div>
      
      <div ><br>
    
		<form action="login" method="post">
		
		<h4>&nbsp;&nbsp;&nbsp;Username:<input type="text" name="username"></input></h4><br>
		<h4>&nbsp;&nbsp;&nbsp;password:<input type="password" name="password"></input></h4><br>
    	&nbsp;&nbsp;&nbsp;<input type = "radio" name = "kind" value="super">SuperAdmin
    	<input type = "radio" name = "kind" value="admin">Admin
    	<input type = "radio" name = "kind" value="user" checked>User<br><br>
		&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="determine">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="button" value="register" onclick="script:window.location.href='register.jsp'">
		<p id="msg" style="color:red; text-align:center">${msg}</p>
	</form>
	</div>
      
      
    </div>
		      </div>	
		      <!--放上面-->	 
	       

	       <div id="bodyer_right"> 
	       	   <div class="right">
     <div class="top">
        <div class="toptop">
        	<span class="topleft1">&nbsp;&nbsp;&nbsp;language:&nbsp;</span>
            <span class="topright2"><img src="images/gb.gif" /><img src="images/fr.gif" style="margin-left: 3px;"/><img  src="images/de.gif" style="margin-left: 3px;"/></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="topleft3"><span class="topleft1">currency:</span>&nbsp;&nbsp;&nbsp;<div class="GBKFUR">GBK&nbsp;&nbsp;FUR&nbsp;&nbsp;</span><span class="ssd">SSD</span></div>
            
        </div>
     	
         <div class="topcenter">
         	<span>&nbsp;&nbsp;&nbsp;<img  src="images/cart.gif"/><span class="mycar">&nbsp;&nbsp;My&nbsp;&nbsp;cart</span><span>3&nbsp;x&nbsp;items&nbsp;|</span><span class="topleft1">TOTAL:&nbsp;100$&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" class="topleft1">view&nbsp;cart</a></span></span>
         </div>
        <div class="topbottom">
        	<img  class="topimag" src="images/border.gif"/>
        </div>
    </div>
    <div class="center">
    	<div class="centertop">
        	<img src="images/bullet3.gif" /><span class="topleft1">&nbsp;About&nbsp;Out&nbsp;Store</span>
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
           <div id="footer_logo1" style="margin-left:5px;margin-top:-10px">
           	cssmbon
           </div>
          </div>
           <div id="img2" style="font-size:0px">
	   	   <img src="images/footer_bg.gif" height="20" width="900">
	   	   </div>
	   	   <div id="footer_logo2" >
	   	      <span id="home">home</span>&nbsp;<span class="about_us">about us</span>&nbsp;<span>services</span>&nbsp;<span>privacy policy</span>&nbsp;<span>register</span>&nbsp;<span>prices</span>&nbsp;<span>contact us</span>
	   </div>
	</div>
  </div>
	

</body>
</html>