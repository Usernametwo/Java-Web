package com.gb.listenerdemo;

import java.util.Set;
import java.util.TreeSet;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.omg.CORBA.PUBLIC_MEMBER;

public class OnlineUserList implements HttpSessionAttributeListener, HttpSessionListener, ServletContextListener {
	private ServletContext app = null;
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		ServletContextListener.super.contextInitialized(sce);
		this.app = sce.getServletContext();
		this.app.setAttribute("online", new TreeSet<>());
	}
	@Override
	public void attributeAdded(HttpSessionBindingEvent se) {
		// TODO Auto-generated method stub
		HttpSessionAttributeListener.super.attributeAdded(se);
		Set all = (Set) this.app.getAttribute("online");
		all.add(se.getValue());
		this.app.setAttribute("online", all);
	}
	@Override
	public void attributeRemoved(HttpSessionBindingEvent se) {
		// TODO Auto-generated method stub
		HttpSessionAttributeListener.super.attributeRemoved(se);
		Set all = (Set) this.app.getAttribute("online");
		all.remove(se.getValue());
		this.app.setAttribute("online", all);
	}
	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		// TODO Auto-generated method stub
		HttpSessionListener.super.sessionDestroyed(se);
		Set all = (Set) this.app.getAttribute("online");
		all.remove(se.getSession().getAttribute("userid"));
		this.app.setAttribute("online", all);
	}
	@Override
	public void sessionCreated(HttpSessionEvent se) {
		// TODO Auto-generated method stub
		HttpSessionListener.super.sessionCreated(se);
	}
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		ServletContextListener.super.contextDestroyed(sce);
	}
	@Override
	public void attributeReplaced(HttpSessionBindingEvent se) {
		// TODO Auto-generated method stub
		HttpSessionAttributeListener.super.attributeReplaced(se);
	}
}
