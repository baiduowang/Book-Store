package daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import util.DBUtil;

import entity.Goods;

public class GoodsDaoImpl implements GoodsDao {

	public static void main(String[] args) {
		GoodsDao dao=new GoodsDaoImpl();
		List<Goods> list=dao.findByUsername("2");
		//System.out.println(list);
		Goods goods=new Goods();
//		goods.setGoods_name("zhangsan");
//		goods.setGoods_price("22");
//		goods.setQuantity("22");
//		goods.setUser_name("zhangsan");
//	  int a= dao.insertGoods(goods);
//	  System.out.println(goods);
//	  System.out.println(a);
        //List<Goods> list22=dao.findByUsername("qidingqiang");
        //System.out.println(list.size());
		int a=dao.deleteGoods("zhangsan", "zhangsan");
		System.out.println(a);
	}
	public List<Goods> findByUsername(String user_name) {
		// TODO Auto-generated method stub
		Connection conn=null;
		PreparedStatement prep=null;
		ResultSet rs=null;
		List<Goods> list=new ArrayList();
		try {
			String sql="select goods_price,goods_name,goods_img,count(goods_name) as quantity from goods where user_name=? group by(goods_name)";
			conn=DBUtil.getConnection();
			prep=conn.prepareStatement(sql);
			prep.setString(1, user_name);
			rs=prep.executeQuery();
			while(rs.next()){	
				Goods goods=new Goods();
				goods.setGoods_name(rs.getString("goods_name"));
				goods.setGoods_price(rs.getString("goods_price"));			 
				goods.setQuantity(rs.getString("quantity"));
				goods.setImg(rs.getString("goods_img"));
				list.add(goods);
				//System.out.println(goods.getGoods_name());
			}
		} catch (Exception e) {
			// TODO: handle exception
			
		}
		return list;
	}
	public int deleteGoods(String goodsId) {
		// TODO Auto-generated method stub
		return 0;
	}
	public int insertGoods(Goods goods) {
		Connection conn=null;
		PreparedStatement prep=null;
		ResultSet rs=null;
		List<Goods> list=new ArrayList();
		int ret=0;
		try {
		   String goods_name=goods.getGoods_name();
		   String price=goods.getGoods_price();
		   String quantity=goods.getQuantity();
		   String user_name=goods.getUser_name();
		   String img=goods.getImg();
		
			String sql="insert into  goods(goods_name,goods_price,user_name,quantity,goods_img) values(?,?,?,?,?)";
			conn=DBUtil.getConnection();
			prep=conn.prepareStatement(sql);
			prep.setString(1, goods_name);
			prep.setString(2, price);
			prep.setString(3,user_name);
			prep.setString(4, quantity);
			prep.setString(5, img);
			ret=prep.executeUpdate();
	
		} catch (Exception e) {
			// TODO: handle excepti
	}
		return ret;
	}
	public int update(Goods goods) {
		Connection conn=null;
		PreparedStatement prep=null;
		ResultSet rs=null;
		List<Goods> list=new ArrayList();
		int ret=0;
		try {
			 String goods_name=goods.getGoods_name();
			   String price=goods.getGoods_price();
			   String quantity=goods.getQuantity();
			   String user_name=goods.getUser_name();
			String sql="update goods set quntity=? where goods_name=?";
			conn=DBUtil.getConnection();
			prep=conn.prepareStatement(sql);
			prep.setString(1, user_name);
			prep.setString(2, goods_name);
			ret=prep.executeUpdate();
	
		} catch (Exception e) {
			// TODO: handle excepti
	}
		return ret;
	}
	public Goods findByGoodsname(String goodsname,String username) {
		// TODO Auto-generated method stub
		Connection conn=null;
		PreparedStatement prep=null;
		ResultSet rs=null;
		
		Goods goods=new Goods();
		try {
			String sql="select *  from goods where username=? and goodsname=? ";
			conn=DBUtil.getConnection();
			prep=conn.prepareStatement(sql);
			prep.setString(1,username);
			prep.setString(1,goodsname);
			rs=prep.executeQuery();
			while(rs.next()){							
				System.out.println(rs.getString("goods_price"));
				goods.setGoods_name(rs.getString("goods_name"));
				goods.setGoods_price(rs.getString("goods_price"));
				System.out.println(goods.getGoods_price());
				System.out.println(rs.getString("goods_price"));
			    goods.setGoods_total_price(rs.getString("goods_total_price"));
				System.out.println(rs.getString("goods_total_price"));
				goods.setQuantity(rs.getString("quantity"));
				System.out.println(rs.getString("quantity"));
				goods.setGoods_price(rs.getString("goods_price"));		
									
			}
		} catch (Exception e) {
			// TODO: handle exception
			
		}
		return goods;
	}
	public int deleteGoods(String userName,String goodsName) {
		// TODO Auto-generated method stub
		Connection conn=null;
		PreparedStatement prep=null;
		Integer rs=null;
		int retu=0;
		try {
			String sql="delete from goods where user_name=? and goods_name=?";
			conn=DBUtil.getConnection();
			prep=conn.prepareStatement(sql);
			prep.setString(1, userName);
			prep.setString(2, goodsName);
		    rs= prep.executeUpdate();
		    if(rs!=null){
		    	retu=1;
		    }
		} catch (Exception e) {
			// TODO: handle exception
			
		}
		return retu;
	}
	public int count(String bookName) {
		// TODO Auto-generated method stub
		Connection conn=null;
		PreparedStatement prep=null;
		ResultSet rs=null;
		try {
			String sql="select goods_price,goods_name,count(goods_name) as quantity from goods where user_name=?";
			conn=DBUtil.getConnection();
			prep=conn.prepareStatement(sql);
			//prep.setString(1,goodsName);
			rs=prep.executeQuery();
			while(rs.next()){				
				Goods goods=new Goods();
				
				goods.setGoods_name(rs.getString("goods_name"));
				goods.setGoods_price(rs.getString("goods_price"));
				
			    goods.setGoods_total_price(rs.getString("goods_total_price"));
				
				goods.setQuantity(rs.getString("quantity"));
			
				goods.setGoods_price(rs.getString("goods_price"));
							
			}
		} catch (Exception e) {
			// TODO: handle exception
			
		}
		return 0;
	}
	}
  
	

