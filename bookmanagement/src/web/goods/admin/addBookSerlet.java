package web.goods.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daos.BookDao;
import entity.Book;

public class addBookSerlet extends HttpServlet {

	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();	
	  
	    String bookname=request.getParameter("bookname");
	    String isbn=request.getParameter("isbn");
	    String price=request.getParameter("price");
	    String publish=request.getParameter("publish");
	    String img=request.getParameter("file");
	    BookDao dao=new BookDao();
	    Book book=new Book();
	    book.setBookname(bookname);
	    book.setIsbn(isbn);
	    book.setPrice(price);
	    book.setPublish(publish);
	    book.setImg(img);
	    System.out.println("bookname:"+bookname);
	    System.out.println("isbn"+isbn);
	    System.out.println("price:"+price);
	    System.out.println("publish:"+publish);
	    System.out.println("img:"+img);
	    int nu=dao.addBook(book);
	    if(nu!=0){
	     out.println("³É¹¦");
	     request.setAttribute("state", 1);
	     response.sendRedirect("addgoods");
	    }else{
	    	out.println("Ê§°Ü");
	    }
		out.flush();
		out.close();
	}

}
