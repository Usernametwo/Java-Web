package com.gb.mvcdemo.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.gb.mvcdemo.dao.IUserDAO;
import com.gb.mvcdemo.vo.User;

public class UserDAOImpl implements IUserDAO {
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	public UserDAOImpl(Connection conn) {
		// TODO Auto-generated constructor stub
		this.conn = conn;
	}
	@Override
	public boolean findLogin(User user) throws Exception {
		// TODO Auto-generated method stub
		boolean flag = false;
		try {
			
			String sql = "SELECT NAME FROM USER WHERE USERID = ? AND PASSWORD = ?";
			this.pstmt = this.conn.prepareStatement(sql);
			this.pstmt.setString(1, user.getUserid());
			this.pstmt.setString(2, user.getPassword());
			ResultSet rs = this.pstmt.executeQuery();
			if(rs.next()) {
				user.setName(rs.getString(1));
				flag = true;
			}
		} catch (Exception e) {
			// TODO: handle exception
			throw e;
			
		} finally {
			if(this.pstmt != null) {
				try {
					this.pstmt.close();	
				} catch(Exception e) {
					throw e;
				}
			}
		}
		return flag;
	}

}
