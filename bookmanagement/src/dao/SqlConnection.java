package dao;

import java.sql.Connection;
import java.sql.DriverManager;

//import org.junit.Test;

public class SqlConnection {
	private static String url="jdbc:mysql://localhost:3306/bookmanagement";
	private static String user="root";
	private static String password="root";
	public static Connection getConnection(){
		Connection con=null;
		//连接数据库
			try {
				Class.forName("com.mysql.jdbc.Driver");
				con= DriverManager.getConnection(url,user,password);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return con;
		}
	}

