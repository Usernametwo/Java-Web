package com.gb.mvcdemo.dao;

import com.gb.mvcdemo.vo.User;

public interface IUserDAO {
	public boolean findLogin(User user) throws Exception;
}
