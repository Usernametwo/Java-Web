package com.gb.mvcdemo.dao.proxy;

import com.gb.mvcdemo.dao.IUserDAO;
import com.gb.mvcdemo.dao.impl.UserDAOImpl;
import com.gb.mvcdemo.dbc.DatabaseConnection;
import com.gb.mvcdemo.vo.User;

public class UserDAOProxy implements IUserDAO{
	
	private DatabaseConnection dbc = null;
	private IUserDAO dao = null;
	public UserDAOProxy() {
		// TODO Auto-generated constructor stub
		try {
			this.dbc = new DatabaseConnection();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		this.dao = new UserDAOImpl(this.dbc.getConnection());
	}
	@Override
	public boolean findLogin(User user) throws Exception {
		// TODO Auto-generated method stub
		boolean flag = false;
		try {
			flag = this.dao.findLogin(user);
		} catch (Exception e) {
			// TODO: handle exception
			throw e;
		} finally {
			this.dbc.close();
		}
		
		return flag;
	}
	
}
