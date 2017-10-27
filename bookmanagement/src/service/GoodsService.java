package service;

import java.util.List;

import daos.BookDao;
import daos.GoodsDao;
import daos.GoodsDaoImpl;
import entity.Book;
import entity.Goods;

public class GoodsService {
       public int addGoods(String goodsId,String username){
    	   BookDao dao1=new BookDao();
    	   Book book=dao1.findById(goodsId);
    	   String bookName=book.getBookname();
    	   String bookPrice=book.getPrice();
    	   Goods goods=new Goods();         
    	   GoodsDao dao2=new GoodsDaoImpl();
    	   Goods good2=dao2.findByGoodsname(bookName, username);
    	  int retu=0;
    	 if(good2==null){
    		  //插入货物到购物车
    		 Goods goods3=new Goods();
    		 goods3.setGoods_name(bookName);
    		 goods3.setGoods_price(bookPrice);
    		 goods3.setQuantity("1");
    		 goods3.setUser_name(username);  		 
    		 retu=dao2.insertGoods(goods3);
    	 }else{  	
    		 Integer num=Integer.parseInt(good2.getQuantity());
    		 num++;
    		 String num2=num+"";
   		     Goods goods4=new Goods();
    		 goods4.setGoods_name(bookName);
    		 goods4.setGoods_price(bookPrice);
    		 goods4.setQuantity(num2);
    		 goods4.setUser_name(username);
    		 retu=dao2.update(goods4); 		 
    	 }
    	  
		return retu;  
          	  
       }


       public int insertGoods(String goodsId,String username){
    	   BookDao dao1=new BookDao();
    	   Book book=dao1.findById(goodsId);
    	   String bookName=book.getBookname();
    	   String bookPrice=book.getPrice();
    	   String bookImg=book.getImg();
    	   GoodsDao dao2=new GoodsDaoImpl();
    	   Goods goods=new Goods();
    	   goods.setGoods_name(bookName);
    	   goods.setGoods_price(bookPrice);
    	   goods.setQuantity("1");
    	   goods.setUser_name(username);
    	   goods.setImg(bookImg);
    	   int retu=dao2.insertGoods(goods);
		
    	   return retu;
       }
}
