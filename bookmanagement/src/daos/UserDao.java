package daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.SqlConnection;

import util.DBUtil;

import entity.User;

public class UserDao {
   public User findByUsername(String username,String level){
	  Connection conn=null;
	  PreparedStatement prep=null;
	  User user=null;
	  try {
		user=new User();
		conn=DBUtil.getConnection();
		prep=conn.prepareStatement("select * from user where username=? and level=?");
		prep.setString(1,username);
		prep.setString(2,level);
		ResultSet rs=prep.executeQuery();
		while(rs.next()){
		/*	String name = rs.getString("username");
			String password = rs.getString("password");
			String level1 = rs.getString("level");*/
		
		    user.setId(rs.getString("id"));
			System.out.println(user.getId());
			user.setUsername(rs.getString("username"));
			user.setLevel(rs.getString("level"));
			user.setPhone(rs.getString("phone"));
			user.setPassword(rs.getString("password"));
//			System.out.println(name+password+level1);

	//	    System.out.println(user.getUsername());
		    return user;
		}
	} catch (Exception e) {
		// TODO: handle exception
	}finally{
		try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	    return user;
   }
   public List<User> findByKey(String key){
	   List<User> list = new ArrayList<User>();
		
		PreparedStatement ps=null;
		Connection con = null;
		ResultSet rs = null;
		con = SqlConnection.getConnection();
		//sql语句
		String sql = "select * from user where username like ?";
	
		try{
			ps = con.prepareStatement(sql);
			key="%"+key+"%";
            ps.setString(1, key);
			rs = ps.executeQuery();
			//遍历数据
			while(rs.next()){
				User user = new User();
				user.setId(rs.getString("id"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password")) ;
				user.setLevel(rs.getString("level"));
				user.setPhone(rs.getString("phone"));
				list.add(user);
				}
			}catch(Exception e){
			e.printStackTrace();
			}
			return  list;
		}

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
		String sql = "select * from user where level='user' or level='admin' limit ?,?";
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
	   String sql = "select count(*) as count from user where level='user' or level='admin'";
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
    public User findById(String id){ 		
   		PreparedStatement ps=null;
   		Connection con = null;
   		ResultSet rs = null;
   		con = SqlConnection.getConnection();
   		//sql语句
   		String sql = "select * from user where id=?";
		User user = new User();
   		try{
   			  ps = con.prepareStatement(sql);
               ps.setString(1, id);
   			rs = ps.executeQuery();
   			//遍历数据
   			while(rs.next()){
   			   user = new User();
   				user.setId(rs.getString("id"));
   				user.setUsername(rs.getString("username"));
   				user.setPassword(rs.getString("password")) ;
   				user.setLevel(rs.getString("level"));
   				user.setPhone(rs.getString("phone"));
   				
   				}
   			}catch(Exception e){
   			e.printStackTrace();
   			}
   			return  user;
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
