package com.lithan.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class EmpDao {

	//Method for Database Connection
	public static Connection getConnection() {
		try {
			
			//Register the driver
			Class.forName("com.mysql.jdbc.Driver");
			
			//Get Connection
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/strutscrud","root","");

			
		}catch(Exception e) {
			e.printStackTrace();
			return null;	
		}
	
	}
	
	
	//Method for Save User to the database
	
	public int registerUser(String uname, String uemail, String upass, String udeg) throws Exception {
		
		int i = 0;
		
		try {
			//Prepare query
			String sql="Insert into struts2crud values (?,?,?,?)";
			
			PreparedStatement ps=getConnection().prepareStatement(sql);
			ps.setString(1,uname);
			ps.setString(2,uemail);
			ps.setString(3,upass);
			ps.setString(4,udeg);
			
			//Execute query
			i=ps.executeUpdate();

			return i;
			
			
		}catch(Exception e) {
			e.printStackTrace();
			return i;
		}finally {
			if(getConnection()!=null) {
				getConnection().close();
			}
		}
	
	}
	
	//Method for Retrieve Employees From Database
	public ResultSet report() throws SQLException,Exception{
		
		ResultSet rs=null;
		
		try {
			
			String sql="Select * from struts2crud";
			
			PreparedStatement ps=getConnection().prepareStatement(sql);
			rs=ps.executeQuery();
			
			return rs;
			
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			if(getConnection()!=null) {
				getConnection().close();
			}
		}
		
	}
	

	
	
	
	
}
