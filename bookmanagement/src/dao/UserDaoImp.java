package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import daos.UserDao;

import entity.User;

//import org.junit.Test;

public class UserDaoImp implements UserDaoInterface{
//增加
	public int add(User user){
		String name = user.getUsername();
		String password = user.getPassword();
		String phone=user.getPhone();
		PreparedStatement ps=null;
		Connection con = null;
		int a=0;
		con=SqlConnection.getConnection();
		//判断语句
			//插入语句
			String sql = "insert into user(username,password,phone,level) values(?,?,?,?)";
			try {
				ps = con.prepareStatement(sql);
				 ps.setString(1, user.getUsername());
		
				 ps.setString(2, user.getPassword());
				 ps.setString(3, user.getPhone());
				 ps.setString(4, user.getLevel());
				 a=ps.executeUpdate();
				 System.out.println(a);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return a;
}		
	//删除数据
	public void del(String id){
		PreparedStatement ps=null;
		Connection con = null;
		con=SqlConnection.getConnection();
		String sql = "delete from user where id=?";
		try {
				
			ps = con.prepareStatement(sql);
			ps.setString(1,id);
			int count = ps.executeUpdate();
		} catch (SQLException e) {
				e.printStackTrace();
		}
	}

	//修改
	public void update(String username,String phone,String password,int id){
		PreparedStatement ps = null;
		Connection con = null;
		con=SqlConnection.getConnection();
		String sql = "update user set username=? ,password=? ,phone=? where id=?";
			try {
				ps = con.prepareStatement(sql);
				ps.setString(1, username);
				ps.setString(2, password);
				ps.setString(3, phone);
				ps.setInt(4, id);
				ps.executeUpdate();
				} catch (Exception e) {
				e.printStackTrace();
			}
		}	
	//查看
	//管理员
	public List<User> show(String username){
		List<User> list = new ArrayList<User>();
		User user = new User();
		PreparedStatement ps=null;
		Connection con = null;
		ResultSet rs = null;
		con = SqlConnection.getConnection();
		//sql语句
		String sql = "select * from user where username=?";
	
		try{
			ps = con.prepareStatement(sql);
			ps.setString(1, username);
			rs = ps.executeQuery();
			//遍历数据
			while(rs.next()){
				user.setId(rs.getString("id"));
				user.setUsername(rs.getString("name"));
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

	
	public List<User> findByAll(String level) {
		// TODO Auto-generated method stub
		List<User> list = new ArrayList<User>();
		
		PreparedStatement ps=null;
		Connection con = null;
		ResultSet rs = null;
		con = SqlConnection.getConnection();
		//sql语句
		String sql = "select * from user where level=?";
		try{
				ps = con.prepareStatement(sql);
				ps.setString(1, level);
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
   
	public void update(User user, String id) {
		// TODO Auto-generated method stub
		
	}
	public int update(User user) {
		// TODO Auto-generated method stub
		String id=user.getId();
		String username=user.getUsername();
		String phone=user.getPhone();
		String password=user.getPassword();
		PreparedStatement ps = null;
		Connection con = null;
		con=SqlConnection.getConnection();
		int a=0;
		String sql = "update user set username=? ,password=? ,phone=? where id=?";
			try {
				ps = con.prepareStatement(sql);
				ps.setString(1, username);
				ps.setString(2, password);
				ps.setString(3, phone);
				ps.setString(4, id);
				 a=ps.executeUpdate();
				} catch (Exception e) {
				e.printStackTrace();
			}
				return a;
		}
	public List<User> findAll() {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		List<User> list = new ArrayList<User>();
		
		PreparedStatement ps=null;
		Connection con = null;
		ResultSet rs = null;
		con = SqlConnection.getConnection();
		//sql语句
		String sql = "select * from user";
		try{
				ps = con.prepareStatement(sql);
				
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
	public List<User> findAdmin(String key) {
		// TODO Auto-generated method stub
		  List<User> list = new ArrayList<User>();
			
			PreparedStatement ps=null;
			Connection con = null;
			ResultSet rs = null;
			con = SqlConnection.getConnection();
			//sql语句
			String sql = "select * from user where level='user'and username like ? ";
		
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
	 public static void main(String[] args) {
	       UserDaoImp dao=new UserDaoImp(); 
	       List<User> list=dao.findAdmin("张");
	       System.out.println(list.get(0).getUsername());
		}
	}	
	
  
	

