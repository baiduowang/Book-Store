package web;
//普通管理员加载所有用户
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDaoImp;
import entity.User;

public class AdminLookServlet extends HttpServlet {


	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		 response.setContentType("text/html;charset=utf-8");
		 request.setCharacterEncoding("utf-8");
	     response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		String key=request.getParameter("keywords");
	     UserDaoImp dao=new UserDaoImp();
	     List<User> list=dao.findAdmin(key);
	    request.setAttribute("list2", list);
	    request.getRequestDispatcher("admin.jsp").forward(request, response);
		out.flush();
		out.close();
	}

}
