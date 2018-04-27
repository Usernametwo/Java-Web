package com.gb.servletdemo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ClientRedirectDemo extends HttpServlet {
	//客户端跳转，此跳转只能传递session以及application范围的属性,不能传递request的值
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.getSession().setAttribute("name", "中文中文");
		req.setAttribute("info", "此信息无法传递到，因为request已经变了");
		//调用的HttpServletResponse的方法
		resp.sendRedirect("/chapter_9/get_info");
	}
}
