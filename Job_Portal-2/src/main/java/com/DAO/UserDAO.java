package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.user;

public class UserDAO {
	private Connection conn;
	public UserDAO(Connection conn) {
		super();
		this.conn=  conn;
	}
	 
	public boolean addUser(user u ) {
		boolean f = false;
		try {
			String sql = "insert into user (name, email,password,qualification,role) values(?,?,?,?,?)";
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setString(1,u.getName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());
			ps.setString(4, u.getQualification());
			ps.setString(5,	"user");
			
			int i = ps.executeUpdate();
			if(i ==1) return true;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
	
	public user login(String em,String psw) {
		user u = null;
		
		try {
			
			String sql = "select * from user where email=? and password=?";
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setString(1, em);
			ps.setString(2, psw);
			
			ResultSet rs= ps.executeQuery();
			while(rs.next()) {
				u = new user();
				u.setId(rs.getInt(1));
				u.setName(rs.getString(2));
				u.setEmail(rs.getString(3));
				u.setPassword(rs.getString(4));
				u.setQualification(rs.getString(5));
				u.setRole(rs.getString(6));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return u;
	}
	
	public boolean updateUser(user u) {
		boolean f = false;
		try {
			
			String sql = "update user set name=?,email=?, password=?,qualification=? where id=?";
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setString(1,u.getName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());
			ps.setString(4, u.getQualification());
			ps.setInt(5,	u.getId());
			
			int i = ps.executeUpdate();
			if(i ==1) return true;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
}
