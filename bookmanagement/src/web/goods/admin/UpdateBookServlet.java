package web.goods.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.AddBookService;

import daos.BookDao;

import entity.Book;

public class UpdateBookServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
	    String id=request.getParameter("id");
	    String bookName=request.getParameter("bookName");
	    String isbn=request.getParameter("isbn");
	    String publish=request.getParameter("publish");
	    String price=request.getParameter("price");
	    String img=request.getParameter("img");
	    
	    Book book2=new Book();
	    book2.setId(id);
	    book2.setBookname(bookName);
	    book2.setIsbn(isbn);
	    book2.setPublish(publish);
	    book2.setImg(img);
	    book2.setPrice(price);
	    System.out.println("id:"+id);
	    System.out.println("bookname"+bookName);
	    System.out.println("isbn"+isbn);
	    System.out.println("publish"+publish);
	    System.out.println("price"+price);
	    System.out.println("img"+img);
	    AddBookService service=new AddBookService();
	    int result=service.check(book2);
	    System.out.println("result:"+result);
	    if(result==1){
	    	request.setAttribute("msg", 1);
	    	response.sendRedirect("addgoods");
	    }else{
	    	out.println("ÐÞ¸ÄÊ§°Ü");
	    }
		out.flush();
		out.close();
	}

}
