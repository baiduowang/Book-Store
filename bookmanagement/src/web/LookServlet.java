package web;
//超级管理员进行模糊查询
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daos.UserDao;
import entity.User;

public class LookServlet extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String key=request.getParameter("keywords");
		key="%"+key+"%";
		UserDao dao=new UserDao();
		List<User> list=dao.findByKey(key);
	   request.setAttribute("list", list);
	   request.getRequestDispatcher("super_admins.jsp").forward(request, response);
		out.flush();
		out.close();
	}

}
