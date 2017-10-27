package daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.SqlConnection;
import entity.User;

public class UserAdminDao {
	 public List<User> findAll(int page) {
			// TODO Auto-generated method stub
			// TODO Auto-generated method stub
			List<User> list = new ArrayList<User>();
			
			PreparedStatement ps=null;
			Connection con = null;
			ResultSet rs = null;
			con = SqlConnection.getConnection();
			int pagesize = 6;
			//sql语句
			String sql = "select * from user where level='user' limit ?,?";
			try{
					ps = con.prepareStatement(sql);
					ps.setInt(1, (page-1)*pagesize);
					ps.setInt(2, pagesize);
					rs = ps.executeQuery();
				//遍历数据
				while(rs.next()){
					//放外面就是一个对象
					User user = new User();
					user.setId(rs.getString("id"));
					user.setUsername(rs.getString("username"));
					user.setPassword(rs.getString("password")) ;
					user.setLevel(rs.getString("level"));
					user.setPhone(rs.getString("phone"));
			
					list.add(user);	
					}
			   return list;
				}catch(Exception e){
				e.printStackTrace();
			  }
				return  list;
		}
	   public int sumUser(){
		   PreparedStatement ps=null;
		   Connection con = null;
		   con = SqlConnection.getConnection();
		   ResultSet rs = null;
		   //sql语句
		   String sql = "select count(*) as count from user where level='user'";
		   int count=0;
		   try{
			   ps = con.prepareStatement(sql);
			   rs = ps.executeQuery();
			   if(rs.next()){
				   count = Integer.valueOf(rs.getString("count"));
			   }
			   
		   }catch (Exception e) {
			  e.printStackTrace();
		   }finally{
			   try {
				   if(con!=null){
					   con.close(); 
				   }
				
			   } catch (SQLException e) {
				   e.printStackTrace();
			   }
		   } 
		   return count;
	   }
	   public static void main(String[] args) {
		UserDao dao=new UserDao();
		
		List<User> list=dao.findByKey("2");
		System.out.println(list.get(0).getId());
		list = dao.findAll(3);
		for(User u : list){
			System.out.println(u.getId());
		}
	   }
}
