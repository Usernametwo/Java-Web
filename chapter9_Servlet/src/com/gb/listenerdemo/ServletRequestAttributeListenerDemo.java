package com.gb.listenerdemo;

import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;

public class ServletRequestAttributeListenerDemo implements ServletRequestAttributeListener {
	@Override
	public void attributeAdded(ServletRequestAttributeEvent srae) {
		// TODO Auto-generated method stub
		ServletRequestAttributeListener.super.attributeAdded(srae);
		System.out.println("增加request属性：" + srae.getName() + ":" + srae.getValue());
	}
	@Override
	public void attributeRemoved(ServletRequestAttributeEvent srae) {
		// TODO Auto-generated method stub
		ServletRequestAttributeListener.super.attributeRemoved(srae);
		System.out.println("删除request属性：" + srae.getName() + ":" + srae.getValue());
	}
	@Override
	public void attributeReplaced(ServletRequestAttributeEvent srae) {
		// TODO Auto-generated method stub
		ServletRequestAttributeListener.super.attributeReplaced(srae);
		System.out.println("替换request属性：" + srae.getName() + ":" + srae.getValue());
	}
}
