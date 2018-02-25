package com.crud;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class CrudOperations {
	private static Connection con = null;
	private static ResultSet rs = null;
	private static PreparedStatement ps = null;
	private static ResourceBundle rb = ResourceBundle.getBundle("com.property.config");
	
	public static Connection createConnection(){
		try {
			Class.forName(rb.getString("driver"));//load driver class
			con=DriverManager.getConnection(rb.getString("url"),rb.getString("id"),rb.getString("pass"));
		}
		catch (ClassNotFoundException|SQLException cse){
			System.out.println(cse);
		}
		return con;
	}
	
	public static ResultSet getData(String sql,String data){
		con=createConnection();
		try {
			ps=con.prepareStatement(sql);
			ps.setString(1,data);
			rs=ps.executeQuery();
		}
		catch(SQLException se){
			System.out.println(se);
		}
		return rs;
	}
	
	public static ResultSet getData(String sql){
		con=createConnection(); 
		try{
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
		}
		catch(SQLException se){
			System.out.println(se);
		}
		return rs;
	}
	
	public static ResultSet getData(String sql,int data){
		con=createConnection(); 
		try{
			ps=con.prepareStatement(sql);
			ps.setInt(1, data);
			rs=ps.executeQuery();
		}
		catch(SQLException se){
			System.out.println(se);
		}
		return rs;
	}
}
