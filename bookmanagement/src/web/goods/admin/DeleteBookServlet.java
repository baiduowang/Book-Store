package web.goods.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daos.BookDao;

public class DeleteBookServlet extends HttpServlet {

	
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		 String id=request.getParameter("id");
		 System.out.println(id);
		 BookDao dao=new BookDao();
		 int result=dao.deleteBook(id);
		 if(result!=0){
		    response.sendRedirect("addgoods");
		 }else{
			 out.println("É¾³ýÊ§°Ü");
		 }
		out.flush();
		out.close();
	}

}
