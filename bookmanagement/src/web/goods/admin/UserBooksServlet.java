package web.goods.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daos.BookDao;
import entity.Book;

public class UserBooksServlet extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		 String file=request.getParameter("file");
		out
				.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		
		out.println(file);
		out.println("  </BODY>");
		out.println("</HTML>");
		BookDao dao=new BookDao();
		 List<Book> list=dao.findAll();
		 System.out.println(list.get(0).getImg());
	     request.setAttribute("list", list);
	     request.getRequestDispatcher("books.jsp").forward(request, response);
		out.flush();
		out.close();
	}

}
