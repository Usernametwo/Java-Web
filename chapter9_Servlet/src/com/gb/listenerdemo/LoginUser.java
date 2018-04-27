package com.gb.listenerdemo;

import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

public class LoginUser implements HttpSessionBindingListener {
	/*
	 * 实现该接口的servlet无需进行配置即可生效
	 * */
	private String name;
	public LoginUser(String name) {
		// TODO Auto-generated constructor stub
		this.name = name;
	}
	@Override
	public void valueBound(HttpSessionBindingEvent event) {
		// TODO Auto-generated method stub
		HttpSessionBindingListener.super.valueBound(event);
		//绑定LoginUser类对象到session时触发
		System.out.println("在session中保存LoginUser对象,session id:" + event.getSession().getId());
	}
	@Override
	public void valueUnbound(HttpSessionBindingEvent event) {
		// TODO Auto-generated method stub
		HttpSessionBindingListener.super.valueUnbound(event);
		//从session中移除LoginUser类的对象时触发
		System.out.println("在session中移除LoginUser对象,session id:" + event.getSession().getId());
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
