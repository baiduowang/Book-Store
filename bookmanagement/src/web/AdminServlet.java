package web;
//超级管理员的操作
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDaoImp;
import entity.User;

public class AdminServlet extends HttpServlet {

	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
        UserDaoImp dao=new UserDaoImp();
        String level="level";
        List<User> list=dao.findByAll(level);
        request.setAttribute("list",list);
        request.getRequestDispatcher("admin.jsp").forward(request, response);
		out.flush();
		out.close();
	}

}
