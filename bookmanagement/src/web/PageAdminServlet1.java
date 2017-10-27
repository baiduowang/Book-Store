package web;
//普通管理员分页功能(++)
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class PageAdminServlet1 extends HttpServlet {


	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		int pages=Integer.parseInt(request.getParameter("pages"));
	
		pages--;

		request.setAttribute("pag", pages);
		request.getRequestDispatcher("admin2.jsp").forward(request, response);
		out.flush();
		out.close();
	}


}
