<%@page contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"%>
<!-- bookss.html -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>bookManagement</title>
  <link rel="stylesheet" href="bookManagement.css">
	<style type="text/css">
	   *{
	   margin:0px;
	   padding:0px;
	   }
body{
	   	background-color: #8e7979;
	   }
	          #all{
          	position:relative;
          	margin-top:px;
          	width:900px;
          	margin-left:233px;
          }
          #logo{
          	position:absolute; 
          	font-style:white-space;
            position: absolute;
            top: 149px;
            left: 15px;
            color:#fff;
			font-size:25px;
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
          	width:480px;
          	height:1000px;
          	padding-left: 16px;
            padding-right: 16px;
           background-image:url(images/center_bg.gif);
			background-color:#fff;
           
			
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
	}
.p4{line-height:25px;
  margin-left:10px;
  font-size:16px;
  } 
  input{
        margin-top: 8px;
        margin-left: 10px;
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
font-size:18px;
}
.a1{
          position: absolute;
          top: 236px;
          left: 399px;
          font-size: 16px;
          color: red;
          visibility: hidden;
          opacity: 1;
          
        }
      .a2{

           position: absolute;
          top: 285px;
          left: 399px;
          font-size: 16px;
          color: red;
          visibility: hidden;
          opacity: 1;

      }

      .a3{

         position: absolute;
          top: 381px;
          left: 399px;
          font-size: 16px;
          color: red;
          visibility: hidden;
          opacity: 1;
      }
      
       .a4{

         position: absolute;
          top: 333px;
          left: 399px;
          font-size: 16px;
          color: red;
          visibility: hidden;
          opacity: 1;
      }
      .span{
          color:red;
      }
.ssd{
    background-color:#FF9900;
}

	</style>
  <script type="text/javascript">

function isStudentNo(str) {
  var reg=/^[a-zA-Z0-9]\w{5,17}$/;   /*定义验证表达式*/
  return reg.test(str);     /*进行验证*/
}

  function check(){
  var name = document.getElementById("1").value;

    if(name == ""){
        document.getElementById("label1").style.visibility="visible";


        return false;
        }
        if(name.length<6)
        {
            alert("用户名长度必须大于6！");
            return false;

        }

         if(name.length>20)
        {
            alert("用户名长度必须小于20！");
          return false;
        }


      var name = document.getElementById("2").value;
      var qrename = document.getElementById("4").value;
        if(name == "" && qrename== ""){
        // alert("密码不能为空！");
         document.getElementById("label2").style.visibility="visible";
        return false;
        }

          if(name.length<6)
        {
            alert("密码长度必须大于6！");
            return false;

        }
         if(name.length>20)
        {
            alert("密码长度必须小于20！");
          return false;
        }

        if(!isStudentNo(document.getElementById("2").value)){
              alert("密码必须由字母或数字或下划线组成！");
              document.getElementById("sno").focus();
              return false;
        }

    if(name!=qrename){
    
        alert("密码不一致！");
        return false;
    
    }

    
        var name = document.getElementById("3").value;
        if(name == ""){

        // alert("电话不能为空！");
        document.getElementById("label3").style.visibility="visible";
        return false;
        }
          if(name.length!=11)
        {
            alert("电话长度必须为11位！");
            return false;
        } 
        return true;
     
}

      function miss()
      {
        document.getElementById("label1").style.visibility="hidden";
        document.getElementById("label2").style.visibility="hidden";
        document.getElementById("label3").style.visibility="hidden";
        document.getElementById("label4").style.visibility="hidden";
        return true;
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
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="login.jsp"><input type="button"  value="logout"/></a>
	      -->
	      Welcome to BookStore
	      </div>
   </div>
	   <div id="bodyer">
	       <div id="bodyer_left">
	       <!--代码放里面-->
             <div class = "contact">
    <div class = "contact-1">
      <div class = "contact-img">
        <img src = "images/bullet1.gif" alt = "图片未加载成功">
      </div>
      <div class = "contact-cs">
        <P><b>Register</b></P>
      </div>
    </div>

    <div class = "contact-2">
      <span class = "myfont">Lorem ipsum dolor sit amet,consectetur adipisicing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud.Lorem ipsum dolor sit amet,consectetur adipisicing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam,quis nostrud.</span>
    </div>
    <div class = "contact-3">
      <div class = "myborder" style="height:250px;">
        <div class = "myborder-bak">
          <P5>create new account</P5>
        </div>

        <br>

        <div id="d1" align="center">

  <form action="register"  onsubmit="return check();"  method="post"  >
  
  <span>
    <h4>Username:
      <input type="text" id="1" name="username"   onclick="return miss();">
    </h4>
  </span>
  <label class="a1"  for="1" id="label1" >input username</label>
  <br>
  
  <span>
    <h4>&nbsp;password:
      <input type="password" name="password" id="2"  onclick="return miss();">
    </h4>
  </span>
  <label class="a2"  for="2" id="label2" >input password</label>
  <br>

  <span>
    <h4>&nbsp;password:
      <input type="password" name="qreword" id="4" maxlength="20"  onclick="return miss();">
    </h4>
  </span>
  <label class="a4"  for="4" id="label4" >input password</label><br>
  
  <span>
    <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;iphone:
      <input type="text"  name="phone" id="3" onclick="return miss();">
    </h4>
  </span>
  <label class="a3"  for="3" id="label3" >input iphone</label><br>
  
  <input type="submit" value="determine" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="button" value="cancel" onclick="script:window.location.href='my_account.jsp'">
  <br/><br/>
  <span class="span"> ${msg}</span> 
  </form>
  </div>

      </div>

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
         	<span>&nbsp;&nbsp;&nbsp;<img  src="images/cart.gif"/><span class="mycar">&nbsp;&nbsp;My&nbsp;&nbsp;cart</span><span>3&nbsp;x&nbsp;items&nbsp;|</span><span class="topleft1">TOTAL:&nbsp;100$&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" class="topleft1">view&nbsp;cart</a></span></span>
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