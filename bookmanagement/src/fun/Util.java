package fun;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.apache.commons.codec.binary.Base64;
public class Util {
		public static String md5(String src){
				//����MD5����
				MessageDigest md;
				byte[] output = null;
				String result=null;
				try {
					md = MessageDigest.getInstance("MD5");
					 output = md.digest(
							src.getBytes());//���ܴ���
				
					 //��MD5��������ת���ַ�
			      result= Base64.encodeBase64String(output);
				} catch (NoSuchAlgorithmException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return 	result;
		}
		  public static void main(String[] args) {
			System.out.println(md5("123"));
		  }	
}
		
