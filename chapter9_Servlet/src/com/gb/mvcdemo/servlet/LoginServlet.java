package com.gb.mvcdemo.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gb.mvcdemo.factory.DAOFactory;
import com.gb.mvcdemo.vo.User;

public class LoginServlet extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String path = "/login";
		String userid = req.getParameter("userid");
		String password = req.getParameter("password");
		List<String> info = new ArrayList<>();
		if(userid == null ||userid.equals("")) {
			info.add("用户名不能为空");
		}
		if(password == null || password.equals("")) {
			info.add("密码不能为空");
		}
		if(info.size() == 0) {
			User user = new User();
			user.setPassword(password);
			user.setUserid(userid);
			try {
				if(DAOFactory.getIUserDAOInstance().findLogin(user)) {
					info.add("用户登录成功，欢迎" + user.getName() + "光临");
				} else {
					info.add("用户登陆失败");
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		req.setAttribute("info", info);
		req.getRequestDispatcher(path).forward(req, resp);
	}
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(req, resp);
	}
}
