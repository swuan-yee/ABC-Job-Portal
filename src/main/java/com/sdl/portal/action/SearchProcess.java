package com.sdl.portal.action;


import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import com.opensymphony.xwork2.ActionSupport;
import com.sdl.portal.dao.UserDao;
import com.sdl.portal.model.User;

public class SearchProcess extends ActionSupport {

	private String search_keyword;
	private UserDao userDao;
	 
	 User userbean;
	 List<User> userbeanList = null;
	 ResultSet rs = null;

	 public User getUserbean() {
		return userbean;
	}

	public void setUserbean(User userbean) {
		this.userbean = userbean;
	}

	public List<User> getUserbeanList() {
		return userbeanList;
	}

	public void setUserbeanList(List<User> userbeanList) {
		this.userbeanList = userbeanList;
	}

	public boolean isNoData() {
		return noData;
	}

	public void setNoData(boolean noData) {
		this.noData = noData;
	}

	private boolean noData = false;
		
	 
	 
	public String getSearch_keyword() {
		return search_keyword;
	}

	public void setSearch_keyword(String search_keyword) {
		this.search_keyword = search_keyword;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		try {
			
			System.out.println("Seach Action");
			userDao= new UserDao();
			userbeanList = new ArrayList<User>();
			rs = userDao.findbykeyword(search_keyword);
			
			System.out.println("Result set is "+rs);
			int i = 0;
			if (rs != null) {
				System.out.println("If function");
				
				while(rs.next()) {
					System.out.println("In RS whiel loop");
					i++;
					userbean = new User();
					userbean.setUser_id(rs.getInt("user_id"));
					userbean.setFirst_name(rs.getString("first_name"));
					userbean.setLast_name(rs.getString("last_name"));
					userbean.setEmail(rs.getString("email"));
					userbeanList.add(userbean);
					
					System.out.println(userbean.getUser_id());
				}
				
			}
			if (i == 0) {
				noData = false;
			} else {
				noData = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "search_success";

	}
}
