package com.gb.servletdemo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet{
	//get请求会调用doGet方法，post请求会调用post方法
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = resp.getWriter();
		out.println("<html>");
		out.println("<head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"><title>HelloServlet</title></head>");
		out.println("<body>");
		out.println("<h1>Hello World</h1>");
		out.println("</body>");
		out.println("</html>");
		out.close();
	}
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String info = req.getParameter("info");
		PrintWriter out = resp.getWriter();
		out.println("<html>");
		out.println("<head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"><title>HelloServlet</title></head>");
		out.println("<body>");
		out.println("<h1>"+info+"</h1>");
		out.println("</body>");
		out.println("</html>");
		out.close();
	}
}
