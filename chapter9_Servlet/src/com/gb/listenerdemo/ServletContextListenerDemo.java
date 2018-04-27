package com.gb.listenerdemo;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ServletContextListenerDemo implements ServletContextListener {
	//对上下文状态进行监听
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		//上下文初始化时触发
		// TODO Auto-generated method stub
		ServletContextListener.super.contextInitialized(sce);
		System.out.println("容器初始化：" + sce.getServletContext().getContextPath());
	}
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		//上下文销毁时触发
		ServletContextListener.super.contextDestroyed(sce);
		System.out.println("容器销毁：" + sce.getServletContext().getContextPath());
	}
}
