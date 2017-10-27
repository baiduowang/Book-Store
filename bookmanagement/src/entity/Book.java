package entity;

public class Book {
	 private String id;
	 private String bookname;
	 private String isbn;
	 private String price;
	 private String publish;
	 private String img;
 
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public Book(String id, String bookname, String isbn, String price,
			String publish, String img) {
		super();
		this.id = id;
		this.bookname = bookname;
		this.isbn = isbn;
		this.price = price;
		this.publish = publish;
		this.img = img;
	}
	public Book(){
		
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}

	public String getPublish() {
		return publish;
	}
	public void setPublish(String publish) {
		this.publish = publish;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getImg() {
		return img;
	}
	@Override
	public String toString() {
		return "Book [bookname=" + bookname + ", id=" + id + ", img=" + img
				+ ", isbn=" + isbn + ", price=" + price + ", publish="
				+ publish + "]";
	}
 
}
