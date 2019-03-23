package db;
import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import model.User;
import model.book;
import sun.security.pkcs11.Secmod.DbMode;

public class db {
	Connection ct;
	PreparedStatement pstmt;
	public db()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			ct=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookadmin?characterEncoding=UTF-8","root","123456");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public User checkUser(String username,String password){
		try {
			pstmt=ct.prepareStatement("select* from userTable where username=? and password=?");
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			ResultSet rs =pstmt.executeQuery();
			User user = new User();
			while(rs.next()){
				user.setid(rs.getInt(1));
				user.setUsername(rs.getString(2));
				user.setPassword(rs.getString(3));
				return user;
			}
			return null;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	public User checkAdmin(String username,String password){
		try {
			pstmt=ct.prepareStatement("select* from admintable where username=? and password=?");
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			ResultSet rs =pstmt.executeQuery();
			User user = new User();
			while(rs.next()){
				user.setid(rs.getInt(1));
				user.setUsername(rs.getString(2));
				user.setPassword(rs.getString(3));
				return user;
			}
			return null;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	public int joinUser(String username,String password){
		try {
			pstmt=ct.prepareStatement("INSERT INTO userTable (username, password) VALUES(?,?)");
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			int a = pstmt.executeUpdate();
			return a;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}
	public List<Map> Allbook(){
		try {
			pstmt=ct.prepareStatement("select * from bookinfo");
			List<Map> list =new ArrayList<Map>();//创建list集合用于存入map的键值对集合  
		
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {  
				String id = rs.getString("id");  
	            String name = rs.getString("name");  
	            String writer = rs.getString("writer"); 
	            //获取用循环接收数据库的表格信息  
	                  
	            Map map = new HashMap();   
	            map.put("id", id);            
	            map.put("name", name);        
	            map.put("writer", writer); 
  
	            list.add(map);//在将map集合对象存入list集合  
	           
	        }  
				return list;
	       }
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	public List<Map> Allselect(String username){
		try {
			pstmt=ct.prepareStatement("select * from selectinfo where username= ?");
			pstmt.setString(1, username);
			List<Map> list =new ArrayList<Map>();//创建list集合用于存入map的键值对集合  
		
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {  
				String id = rs.getString("id");  
	            String name = rs.getString("name");  
	            String writer = rs.getString("writer"); 
	            //获取用循环接收数据库的表格信息  
	                  
	            Map map = new HashMap();   
	            map.put("id", id);            
	            map.put("name", name);        
	            map.put("writer", writer); 
  
	            list.add(map);//在将map集合对象存入list集合  
	            System.out.println(username); 
	           
	        }  
				return list;
	       }
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	public int joinBook(String id,String name,String writer){
		try {
			pstmt=ct.prepareStatement("INSERT INTO bookinfo (id,name, writer) VALUES(?,?,?)");
			pstmt.setString(1, id);
			pstmt.setString(2, name);
			pstmt.setString(3, writer);
			int a = pstmt.executeUpdate();
			return a;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}
	public int delBook(String name){
		try {
			pstmt=ct.prepareStatement("DELETE FROM bookinfo WHERE name = ?");
			pstmt.setString(1, name);
			int a = pstmt.executeUpdate();
			return a;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}
	public int returnBook(String name){
		try {
			pstmt=ct.prepareStatement("DELETE FROM selectinfo WHERE name = ?");
			pstmt.setString(1, name);
			int a = pstmt.executeUpdate();
			return a;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}
	public book findBook(String name){
		try {
			pstmt=ct.prepareStatement("select * FROM bookinfo WHERE name = ?");
			pstmt.setString(1, name);
			book book = new book();
			ResultSet rs =pstmt.executeQuery();
			while(rs.next()){
				book.setid(rs.getInt(1));
				book.setname(rs.getString(2));
				book.setwriter(rs.getString(3));
				return book;
			}
			return null;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	public int selectbook(String id,String name,String writer,String username){
		try {
			pstmt=ct.prepareStatement("INSERT INTO selectinfo (id,name, writer,username) VALUES(?,?,?,?)");
			pstmt.setString(1, id);
			pstmt.setString(2, name);
			pstmt.setString(3, writer);
			pstmt.setString(4, username);
			int a = pstmt.executeUpdate();
			return a;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}
}
