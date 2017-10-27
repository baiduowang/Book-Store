package service;

import daos.BookDao;
import entity.Book;

public class AddBookService {
     public int check(Book book){
    	 BookDao dao=new  BookDao();
    	 int result=dao.updateBook(book);
		 return result;
    	 
     }
     public static void main(String[] args) {
		Book book=new Book("1","2","2","3","4","5");
		AddBookService service=new AddBookService();
		int a=service.check(book);
		System.out.println(a);
	}
}
