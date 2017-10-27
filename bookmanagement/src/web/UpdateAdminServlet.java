package web;
//超管更新信息
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDaoImp;
import entity.User;
import fun.Util;

public class UpdateAdminServlet extends HttpServlet {


	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
       
        String username=request.getParameter("username");
        String phone=request.getParameter("phone");
        String password1=request.getParameter("password");
        String password=Util.md5(password1);
        String id=request.getParameter("id");
        User user=new User();
         user.setId(id);
         user.setPhone(phone);
         user.setUsername(username);
         user.setPassword(password);
       UserDaoImp dao=new UserDaoImp();
       int num=dao.update(user);
       System.out.println("num"+num);
       if(num!=0){
//       request.setAttribute("msg4", "修改成功");
//       request.getRequestDispatcher("xiugai.jsp").forward(request, response);
         response.sendRedirect("super_admin.jsp");
       }else{
    	   request.setAttribute("msg4", "修改失败");
           request.getRequestDispatcher("xiugai.jsp").forward(request, response);
       }
		out.flush();
		out.close();
	}

}
