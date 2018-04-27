package com.gb.listenerdemo;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class HttpSessionListenerDemo implements HttpSessionListener {
	//当用户打开一个动态页时，服务器会为新用户分配session，并且触发HttpSessionListener接口中的sessionCreated事件，但是用户销毁时却有两种不同的方式来触发sessionDestroyed方法
	//方式一：调用HttpSession里面的invalidate()方法，让一个session失效
	//方式二：超过了配置的session超时时间,tomcat默认超时时间为30min
	@Override
	public void sessionCreated(HttpSessionEvent se) {
		// TODO Auto-generated method stub
		HttpSessionListener.super.sessionCreated(se);
		System.out.println("SESSION创建： SESSION ID" + se.getSession().getId());
	}
	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		// TODO Auto-generated method stub
		HttpSessionListener.super.sessionDestroyed(se);
		System.out.println("SESSION销毁： SESSION ID" + se.getSession().getId());
	}
}
