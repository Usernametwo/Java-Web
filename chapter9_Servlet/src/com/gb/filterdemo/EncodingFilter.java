package com.gb.filterdemo;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class EncodingFilter implements Filter {

	/*
	 * 之前每一个jsp文件都需要设置编码，我们可以用过滤器来给所有页面统一设置编码
	 * */
	
	private String charSet;
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		Filter.super.init(filterConfig);
		this.charSet = filterConfig.getInitParameter("charset");    //从配置文件中取得统一编码
	}
	
	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		System.out.println("设置编码" + this.charSet);
		arg0.setCharacterEncoding(this.charSet);       //给页面设置统一编码
		arg1.setCharacterEncoding(this.charSet);
		arg2.doFilter(arg0, arg1);
	}
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		Filter.super.destroy();
	}

}
