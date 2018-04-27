package com.gb.mvcdemo.factory;

import com.gb.mvcdemo.dao.IUserDAO;
import com.gb.mvcdemo.dao.proxy.UserDAOProxy;

public class DAOFactory {
	public static IUserDAO getIUserDAOInstance() {
		return new UserDAOProxy();
	}
}
