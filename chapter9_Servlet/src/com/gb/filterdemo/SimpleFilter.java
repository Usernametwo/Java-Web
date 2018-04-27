package com.gb.filterdemo;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class SimpleFilter implements Filter{
	/*
	 * 过滤器Servlet，只需实现Filter接口就是一个过滤器
	 * 过滤器的初始化方法(init方法)是在容器启动时调用的
	 * */
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		Filter.super.init(filterConfig);
		String initParam = filterConfig.getInitParameter("ref");
		System.out.println("过滤器初始化参数=" + initParam);
	}
	
	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		System.out.println("过滤器执行doFilter()方法之前");
		arg2.doFilter(arg0, arg1);
		System.out.println("过滤器执行doFilter()方法之后");
	}
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		Filter.super.destroy();
		System.out.println("过滤器销毁");
	}
	
}
