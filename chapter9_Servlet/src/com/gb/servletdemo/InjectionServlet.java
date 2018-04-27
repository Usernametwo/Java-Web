package com.gb.servletdemo;

import java.io.IOException;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspsmart.upload.Request;

public class InjectionServlet extends HttpServlet{
	/*
	 * 通过注解获取web.xml中的资源配置
	 * 资源注射的工作原理是JNDI
	 * 如果不使用@Resource注解也可以通过查找JNDI的方式获取资源
	 * Context ctx = new InitialContext();
	 * String param1 = (String) ctx.lookup("param1");
	 * */
	@Resource(name="param1")
	private String param1;
	@Resource(name="param2")
	private int param2;
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setAttribute("param1", param1);
		req.setAttribute("param2", param2);
		req.getRequestDispatcher("WEB-INF/injection.jsp").forward(req, resp);

	}
	@PostConstruct
	public void method() {
		System.out.println("@postConstruct方法执行");
	}
	@PreDestroy
	public void method_B() {
		System.out.println("@preDestroy方法执行");
	}
}
