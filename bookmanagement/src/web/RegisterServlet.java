package web;
//ע���û���Ϣ
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDaoImp;
import entity.User;
import fun.Util;

public class RegisterServlet extends HttpServlet {

	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
   	    //��ȡ�������
		//ע���û�
        String username= request.getParameter("username");
        String password1=request.getParameter("password");
        String password=Util.md5(password1);
      
        String phone=request.getParameter("phone");
        System.out.println("username"+username+"phone"+phone+"password:"+password);
        if(username!=null&&password!=null&&phone!=null){
		        UserDaoImp dao=new UserDaoImp();
		        List<User> list=dao.findByAll("user");
		        System.out.println(list);
		        boolean bool=false;	
		        
		      if(list.size()!=0){
		        for(int i=0;i<list.size();i++){
		       	 String user=list.get(i).getUsername();
		       	 if(username.equals(user)){
		       		 
		       		 String msg="�û��Ѵ���";
		   		     System.out.println(msg);
		   		     request.setAttribute("msg", msg);
			         request.getRequestDispatcher("register.jsp").forward(request, response);
		       	  }
       	             bool=true;
             }
		            if(bool==true){       	 
		       		User users=new User();
			        users.setLevel("user");
			        users.setUsername(username);
			        users.setPassword(password);
			        users.setPhone(phone);
			        int a=dao.add(users);
			        if(a!=0){
		 		     String msg="ע��ɹ�";
			         System.out.println("ע��ɹ�");
			         request.setAttribute("msg", msg);
		             request.getRequestDispatcher("my_account.jsp").forward(request, response);		 		           
			      }else{
		        	  String msg="ע��ʧ��";
		   	          System.out.println(msg);
		   	          request.setAttribute("msg", msg);
		              request.getRequestDispatcher("register.jsp").forward(request, response);		 
		            }
		         }
	          }  
        else{
        	User users=new User();
	        users.setLevel("user");
	        users.setUsername(username);
	        users.setPassword(password);
	        users.setPhone(phone);
	        dao.add(users);
 		    String msg="ע��ɹ�";
	        System.out.println("ע��2��");
	        request.setAttribute("msg", msg);
            request.getRequestDispatcher("my_account.jsp").forward(request, response);		
         }
	   }
     }
   
	public static void main(String[] args) {
		List list=new ArrayList();
		System.out.println(list);
		System.out.println(list==null);
	}
  }
  
