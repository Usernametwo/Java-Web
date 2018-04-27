package com.gb.listenerdemo;

import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;

public class ServletContextAttributeListenerDemo implements ServletContextAttributeListener {
	//对上下文属性进行监听
	@Override
	public void attributeAdded(ServletContextAttributeEvent scae) {
		// TODO Auto-generated method stub
		ServletContextAttributeListener.super.attributeAdded(scae);
		System.out.println("增加属性：" + scae.getName() + ",属性内容:" + scae.getValue());
	}
	@Override
	public void attributeRemoved(ServletContextAttributeEvent scae) {
		// TODO Auto-generated method stub
		ServletContextAttributeListener.super.attributeRemoved(scae);
		System.out.println("删除属性：" + scae.getName() + ",属性内容:" + scae.getValue());
	}
	@Override
	public void attributeReplaced(ServletContextAttributeEvent scae) {
		// TODO Auto-generated method stub
		ServletContextAttributeListener.super.attributeReplaced(scae);
		System.out.println("替换属性：" + scae.getName() + ",属性内容:" + scae.getValue());
	}

}
