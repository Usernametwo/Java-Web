package com.gb.servletdemo;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletContextDemoServlet extends HttpServlet{
	//取得application  也即ServletContext实例
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ServletContext servletContext = super.getServletContext();
		System.out.println("真是路径：--->" + servletContext.getRealPath("/"));
	}
}
