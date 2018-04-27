package com.gb.servletdemo;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServerRedirectDemo extends HttpServlet {
	//服务器跳转，request范围有用
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setAttribute("info", "服务器跳转中由于客户端没有发送新的request所以有效");
		req.getSession().setAttribute("name", "Usernametwo");
		//服务器跳转，需要实例化RequestDispatcher对象才能进行跳转
		//无需配置即可访问WEB-INF下面的文件
		RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/get_info.jsp");
		rd.forward(req, resp);
	}
}
