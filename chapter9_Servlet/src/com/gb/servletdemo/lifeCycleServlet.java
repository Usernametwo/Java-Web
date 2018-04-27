package com.gb.servletdemo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class lifeCycleServlet extends HttpServlet {
	/*
	 * 第一次调用该Servlet会执行构造方法和init()方法，当容器重启的时候会出现销毁信息
	 * 当然也可以将该Servlet设置为一开始就启动，需要web.xml配置
	 * */
	public lifeCycleServlet() {
		// TODO Auto-generated constructor stub
		super();
		System.out.println("对象创建时------");
	}
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		System.out.println("Servlet初始化---->init()");
	}
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Servlet服务------->doGet()");
	}
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Servlet服务------->doPost()");
	}
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		super.destroy();
		System.out.println("Servlet销毁----->destroy();");
	}
}
