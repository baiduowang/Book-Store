package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
  /**
   * JDBC������
   * �ṩ�˻�ȡ���ӣ��ر�����
   * @author Administrator
   *
   */
public class DBUtil {
         public static Connection getConnection() throws Exception{
        	 Connection conn=null;
        	 
        	 try {
				Class.forName("com.mysql.jdbc.Driver");
				conn=DriverManager.getConnection
	 			("jdbc:mysql://127.0.0.1:3306/bookmanagement",
	 			 "root",
	 			 "root");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				throw(e);
			}
        	 
        	 return conn;
         }
         
         public static void close(Connection conn){

        	  if(conn!=null){
        		try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}  
        	  }
        	  }
         public static void main(String[] args) throws Exception {
			Connection conn=getConnection();
			System.out.println(conn);
		}        
}
        
     

