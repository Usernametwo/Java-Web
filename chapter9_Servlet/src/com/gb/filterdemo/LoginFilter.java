package com.gb.filterdemo;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class LoginFilter implements Filter {
	/*
	 * 登录验证（其他功能未实现，只演示了基本代码）
	 * */
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		Filter.super.init(filterConfig);
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		//此处需要向下转型，因为session是属于Http协议的内容
		HttpServletRequest request = (HttpServletRequest) arg0;
		HttpSession session = request.getSession();
		if(session.getAttribute("userid") != null) {
			arg2.doFilter(arg0, arg1);
		} else {
			request.getRequestDispatcher("login.jsp").forward(arg0, arg1);
		}
	}
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		Filter.super.destroy();
	}
}
