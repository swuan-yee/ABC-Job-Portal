package com.sdl.portal.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sdl.portal.config.DBConfig;
import com.sdl.portal.model.User;

import java.sql.PreparedStatement;
import java.sql.Connection;

public class UserDao {
	Connection con;
	PreparedStatement pst;
	User user;
	List<User> users;

	public UserDao() {
		this.user = null;
		this.users = null;
		this.con = DBConfig.getConnection();
	}

	///////////// For Login Process //////////////////////////////
	public User getUserByEmail(String email, String pass) throws SQLException {

		System.out.println("login user DAO");
		System.out.println("Login Email is " + email);
		System.out.println("Login Password is " + pass);

		User user = null;
		try {
			String sql = "select * from user where email=? and password=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, pass);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				user = new User();
				user.setUser_id(rs.getInt("user_id"));
				user.setFirst_name(rs.getString("first_name"));
				user.setFirst_name(rs.getString("last_name"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("contact"));
				user.setPassword(rs.getString("password"));
				user.setRole_id(rs.getInt("role_id"));
			}

			System.out.println("login user row is " + user);
			return user;

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if (con != null) {
				con.close();
				System.out.println("Connectoin close");
			}
		}
	}

	

	///////////// End Login Process //////////////////////////////

	////////////////// Register //////////////////////////////////

	public int registerUser(String fname, String lname, String email, String phone, String password) {
		// TODO Auto-generated method stub
		int flag = 0;
		try {
			String sql = "insert into user(first_name,last_name,email,contact,password,role_id) values(?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, fname);
			ps.setString(2, lname);
			ps.setString(3, email);
			ps.setString(4, phone);
			ps.setString(5, password);
			ps.setInt(6, 2);

			flag = ps.executeUpdate();
			if (flag > 0) {
				System.out.println("Register Successful");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}

	////////////////// End Register/////////////////////////////////

	
	/////////////////////// Profile //////////////////////////////

	public User getUserById(int userid) throws SQLException {

		System.out.println(userid);
		User user = null;
		try {
			String sql = "select * from user where user_id=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, userid);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				user = new User();
				user.setUser_id(rs.getInt("user_id"));
				user.setFirst_name(rs.getString("first_name"));
				user.setLast_name(rs.getString("last_name"));
				user.setEmail(rs.getString("email"));
				user.setContact(rs.getString("contact"));
				user.setPassword(rs.getString("password"));
				user.setDob(rs.getString("dob"));
				user.setProfession(rs.getString("profession"));
				user.setExperience(rs.getString("experience"));
				user.setEnglish_level(rs.getString("english_level"));
				user.setBio(rs.getString("bio"));
				user.setRole_id(rs.getInt("role_id"));
			}

			System.out.println("Profile User is " + user);
			return user;

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if (con != null) {
				con.close();
				System.out.println("Connection close");
			}
		}
	}

	public int updateUser(User user) {
		System.out.println(user.getUser_id());
		int flag = 0;
		try {
			String sql = "update user set first_name=? , last_name=? , email=?, contact=?, password=?, dob=?, profession=?, experience=?, english_level=?, bio=? where user_id=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, user.getFirst_name());
			ps.setString(2, user.getLast_name());
			ps.setString(3, user.getEmail());
			ps.setString(4, user.getContact());
			ps.setString(5, user.getPassword());
			ps.setString(6, user.getDob());
			ps.setString(7, user.getProfession());
			ps.setString(8, user.getExperience());
			ps.setString(9, user.getEnglish_level());
			ps.setString(10, user.getBio());
			ps.setInt(11, user.getUser_id());
			flag = ps.executeUpdate();

			if (flag > 0) {
				System.out.println("User Update is Successful");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;

	}

//////////////////////////////End Profile ////////////////////////////////////////////////

	///////////////////////////////////////// Search
	///////////////////////////////////////// //////////////////////////////////////////
	public ResultSet findbykeyword(String keyword) throws SQLException, Exception {
		ResultSet rs = null;
		try {

			System.out.println("At Search by keyward Fucntion");
			String sql = "SELECT * FROM user where first_name Like'%" + keyword + "%'";
			PreparedStatement ps = con.prepareStatement(sql);
			rs = ps.executeQuery();

			System.out.println("RS Is " + rs);

			return rs;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	

//////////////////////////////////////////End Search/////////////////////////////////////////

/////////////////////////////////////////Forget Password /////////////////////////////////////
	public User checktUserByEmail(String email) throws SQLException {

		System.out.println("Check user email  DAO");
		System.out.println("check Email is " + email);

		User user = null;
		try {
			String sql = "select * from user where email=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				user = new User();
				user.setUser_id(rs.getInt("user_id"));
				user.setFirst_name(rs.getString("first_name"));
				user.setLast_name(rs.getString("last_name"));
				user.setEmail(rs.getString("email"));
				user.setContact(rs.getString("contact"));
				user.setPassword(rs.getString("password"));
				user.setRole_id(rs.getInt("role_id"));
			}

			System.out.println("Check user is " + user);
			return user;

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if (con != null) {
				con.close();
				System.out.println("Connection close");
			}
		}
	}
	
	
	public int updatePassword(String password, String email)
			throws SQLException, Exception {
		
		int i = 0;
		try {
			System.out.println("Update Password "+password);
			System.out.println("Update Email "+email);
			
			String sql = "UPDATE user SET password=? WHERE email=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, password);
			ps.setString(2, email);
			i = ps.executeUpdate();
			return i;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		} finally {
			if (con != null) {
				con.close();
			}
		}
	}
//////////////////////////////////////End Forget Password/////////////////////////////////////
	
//////////////////////////////////////Manage Users /////////////////////////////////////

	public ResultSet getAllUser() throws SQLException, Exception {
		ResultSet rs = null;
		try {
			String sql = "Select * from user";
			PreparedStatement ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} 
		
	}

	
	public int deleteUserDetails(String email) throws SQLException, Exception {
		int i = 0;
		try {
			String sql = "DELETE from user WHERE email=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, email);
			i = ps.executeUpdate();
			return i;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		} finally {
			if (con != null) {
				con.close();
			}
		}
	}

	
//////////////////////////////////////Manage Users /////////////////////////////////////
	
}