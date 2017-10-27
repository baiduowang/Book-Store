 package daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import util.DBUtil;

import entity.Book;
 public class BookDao{
	 
	  public Book findById(String id){
		 
		  Connection conn=null;
		  PreparedStatement prep=null;
		  ResultSet rs=null;
		  Book book=new Book();
		  try {
			   String sql="select * from book where id=?";
		       conn=DBUtil.getConnection();		       
		       prep=conn.prepareStatement(sql);
		       prep.setString(1, id);
		       rs=prep.executeQuery();
		       System.out.println("11");
		       while(rs.next()){
		    	   System.out.println(rs.getString("id"));
 	                 book.setId(rs.getString("id"));
		    	     book.setBookname(rs.getString("bookname"));
		    	     book.setIsbn(rs.getString("isbn"));
		    	     book.setPrice(rs.getString("price"));
		    	     book.setPublish(rs.getString("publish"));
		    	     book.setImg(rs.getString("book_img"));
		       }
		} catch (Exception e) {
			// TODO: handle exception
			
		}
		return book;
	  }
	  public List<Book> findAll(){
		Connection conn=null;
		PreparedStatement prep=null;
		ResultSet rs=null;
		List<Book> list=new ArrayList<Book>();
	   try {
		    conn=DBUtil.getConnection();
		    prep=conn.prepareStatement("select * from book");
		    rs=prep.executeQuery();
		    while(rs.next()){
		    	Book book=new Book();
		    	book.setImg(rs.getString("book_img"));
		    	book.setBookname(rs.getString("bookname"));
		    	book.setIsbn(rs.getString("isbn"));
		    	book.setPrice(rs.getString("price"));
		    	book.setPublish(rs.getString("publish"));
		    	book.setId(rs.getString("id"));
		    	list.add(book);
		    }
	} catch (Exception e) {
		// TODO: handle exception
	}
		  return list;
	  }
	  
	  public int addBook(Book book){
		Connection conn=null;
		PreparedStatement prep=null;
		int retn=0;
		   try {
			conn=DBUtil.getConnection();
			prep=conn.prepareStatement("insert into book(bookname,isbn,price,publish,book_img) values(?,?,?,?,?)");
		    prep.setString(1,book.getBookname());
		    prep.setString(2,book.getIsbn());
		    prep.setString(3, book.getPrice());
		    prep.setString(4, book.getPublish());
		    prep.setString(5, book.getImg());
		    retn=prep.executeUpdate();
		    System.out.println(retn);
		} catch (Exception e) {
			// TODO: handle exception
		}
           return retn;
	  }
	  
	  public int updateBook(Book book){
		      Connection conn=null;
			  PreparedStatement prep=null;
			  int retn=0;
			  String  id=book.getId();
			  String  bookName=book.getBookname();
			  System.out.println(id);
			   try {
				conn=DBUtil.getConnection();
				System.out.println("1111");
				prep=conn.prepareStatement("update book set bookname=?,isbn=?,price=?,publish=?,book_img=? where id=?");		
				System.out.println("bookid:"+book.getId());
				prep.setString(1,bookName);
			    prep.setString(2,book.getIsbn());
			    prep.setString(3,book.getPrice());
			    prep.setString(4,book.getPublish());
			    prep.setString(5,book.getImg());
			    prep.setString(6,id);
			    retn=prep.executeUpdate();
			 
			    System.out.println(retn);
   		} catch (Exception e) {
				// TODO: handle exception
			}
	           return retn;
		  
	  }
	  
	  public int deleteBook(String id){
		  Connection conn=null;
		  PreparedStatement prep=null;
		  int retn=0;
		 
		  System.out.println(id);
		   try {
			conn=DBUtil.getConnection();
			System.out.println("1111");
			prep=conn.prepareStatement("delete from book where id=?");		
		
			prep.setString(1,id);
		   
		    retn=prep.executeUpdate();
		 
		    System.out.println(retn);
		} catch (Exception e) {
			// TODO: handle exception
		}
           return retn;
	  
  }
	  public static void main(String[] args) {
		BookDao dao=new BookDao();
//		Book book=dao.findById("2");
//		System.out.println(book);
//		System.out.println(book.getPrice());
		Book book=new Book("4","2","32","32","32","32");
		dao.updateBook(book);
		List<Book> list=dao.findAll();
	
		System.out.println(	);
		for(int i=0;i<list.size();i++){
			Book book2=new Book();
			book2=list.get(i);
			System.out.println(book2.toString());
		}
//		Book book=new Book();
//		    book.setBookname("4");
//		    book.setIsbn("4");
//		    book.setPrice("5");
//		    book.setPublish("6");
//		    book.setImg("7");
//		    int a=dao.addBook(book);
//		    System.out.println(a);
	}
	  
 }