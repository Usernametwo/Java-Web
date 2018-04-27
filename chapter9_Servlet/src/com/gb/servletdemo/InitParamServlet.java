package com.gb.servletdemo;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InitParamServlet extends HttpServlet {
	//读取初始化配置信息
	//之前jsp里面的内置对象config其实是ServletConfig的实例,request是HttpServletRequest的实例,response是HttpServletResponse的实例
	//Servlet中初始化方法一共有两个，分别为init()和init(ServletConfig config)，如果同时存在则调用表后者
	private String initParam = null;
	@Override
	public void init(ServletConfig servletConfig) throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		this.initParam = servletConfig.getInitParameter("ref");
	}
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("初始化参数" + this.initParam);
	}
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(req, resp);
	}
}
