package web;
//登录超级管理员
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDaoImp;
import daos.UserDao;
import entity.User;
import fun.Util;

@SuppressWarnings("serial")
public class LoginServlet extends HttpServlet {

	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
      request.setCharacterEncoding("utf-8");
   	  //读取请求参数值  	 
   	  //数据编码发送
   	  response.setContentType("text/html;charset=utf-8");
   	  PrintWriter out=response.getWriter();
		//DAO层，对数据库操作,获取请求资源
 
    	  //String uri=request.getRequestURI();
	   //截主要地址
    	  System.out.println("service");
	  // String action=uri.substring(uri.lastIndexOf("/")+1,uri.lastIndexOf("."));

	    	//登录验证
	         String username=request.getParameter("username");
	         String password=request.getParameter("password");
	         password=Util.md5(password);
	         String level=request.getParameter("kind");
	   
	    	System.out.println(username+","+password+","+level);
	    		if("user".equals(level)){
	        	//用户
	        	UserDao dao=new  UserDao();
		        User user=dao.findByUsername(username,level);
		        System.out.println(user);
		        System.out.println(user.getUsername());
			        	if(user.getUsername()!=null){
			        		String pwd=user.getPassword();
					        	     if(password.equals(pwd)){
					        	    	 //session验证
					        	    	 HttpSession session=request.getSession();
					        	    	 session.setAttribute("verify1", 1);
					        	    	 session.setAttribute("username", username);
					        	    	 response.sendRedirect("userBooks");
					        	     }else{
					        	    	    String msg="密码不正确";
						        		    System.out.println(msg);
						        		    request.setAttribute("msg", msg);
						   	                request.getRequestDispatcher("my_account.jsp").forward(request, response);
					        	     }
			        	}else{
	        		     String msg="用户名不存在";
	        		     System.out.println(msg);
	        		     request.setAttribute("msg", msg);
	   	                 request.getRequestDispatcher("my_account.jsp").forward(request, response);
	        	} 
	    	
	    
	        }else if("admin".equals(level)){
	        	//普通管理员
	        	//用户
	        	UserDao dao=new  UserDao();
		        User user=dao.findByUsername(username,level);
		        System.out.println(user);
		        System.out.println( user.getUsername());
			        	if(user.getUsername()!=null){
			        		String pwd=user.getPassword();
					        	     if(password.equals(pwd)){
					        	    	 HttpSession session=request.getSession();
					        	    	 session.setAttribute("verify3", 2);
					        	    	 session.setAttribute("username", username);
					        	    	 response.sendRedirect("admin2.jsp");
					        	     }else{
					        	    	    String msg="密码不正确";
						        		    System.out.println(msg);
						        		    request.setAttribute("msg", msg);
						   	                request.getRequestDispatcher("my_account.jsp").forward(request, response);
					        	     }
			        	}else{
	        		     String msg="用户名不存在";
	        		     System.out.println(msg);
	        		     request.setAttribute("msg", msg);
	   	                 request.getRequestDispatcher("my_account.jsp").forward(request, response);
	        	} 
	    	
	        }else if("super".equals(level)){
	        	//超级管理员
	        	//用户
	        	UserDao dao=new  UserDao();
		        User user=dao.findByUsername(username,level);
		        System.out.println(user);
		        System.out.println(user.getUsername());
			        	if(user.getUsername()!=null){
			        		String pwd=user.getPassword();
					        	     if(password.equals(pwd)){
					        	    	 HttpSession session=request.getSession();
					        	    	 session.setAttribute("verify3", 3);
					        	    	 session.setAttribute("username", username);
					        	    	 response.sendRedirect("super_admin.jsp");
					        	     }else{
					        	    	    String msg="密码不正确";
						        		    System.out.println(msg);
						        		    request.setAttribute("msg", msg);
						   	                request.getRequestDispatcher("my_account.jsp").forward(request, response);
					        	     }
			        	}else{
	        		     String msg="用户名不存在";
	        		     System.out.println(msg);
	        		     request.setAttribute("msg", msg);
	   	                 request.getRequestDispatcher("my_account.jsp").forward(request, response);
	        	} 
	    	
	        }
	      
	      }
	    
  	} 
  




