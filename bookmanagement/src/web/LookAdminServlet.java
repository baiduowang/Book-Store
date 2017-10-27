package web;
//普通管理员的模糊查询
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDaoImp;
import daos.UserDao;
import entity.User;

public class LookAdminServlet extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String key=request.getParameter("keywords");
		key="%"+key+"%";
		UserDaoImp dao=new UserDaoImp();
		List<User> list=dao.findAdmin(key);
	   request.setAttribute("list", list);
	   request.getRequestDispatcher("adminlook2.jsp").forward(request, response);
		out.flush();
		out.close();
	}

}
