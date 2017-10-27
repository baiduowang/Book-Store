package web;
//登录普通管理员
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDaoImp;
import entity.User;

public class LoginAdminServlet extends HttpServlet {

	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	    request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;cahrset=utf-8");
	    response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		UserDaoImp dao=new UserDaoImp();
		List<User> list=dao.findByAll("user");
		request.setAttribute("list2", list);
		request.getRequestDispatcher("admin.jsp").forward(request, response);
		out.flush();
		out.close();
	}

}
