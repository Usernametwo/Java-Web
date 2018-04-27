package com.gb.listenerdemo;

import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

public class HttpSessionAttributeListenerDemo implements HttpSessionAttributeListener {
	@Override
	public void attributeAdded(HttpSessionBindingEvent se) {
		// TODO Auto-generated method stub
		HttpSessionAttributeListener.super.attributeAdded(se);
		System.out.println("session增加属性：" + se.getName() + ",属性内容:" + se.getValue());
	}
	@Override
	public void attributeReplaced(HttpSessionBindingEvent se) {
		// TODO Auto-generated method stub
		HttpSessionAttributeListener.super.attributeReplaced(se);
		System.out.println("session替换属性：" + se.getName() + ",属性内容:" + se.getValue());
	}
	@Override
	public void attributeRemoved(HttpSessionBindingEvent se) {
		// TODO Auto-generated method stub
		HttpSessionAttributeListener.super.attributeReplaced(se);
		System.out.println("session删除属性：" + se.getName() + ",属性内容:" + se.getValue());
	}
}
