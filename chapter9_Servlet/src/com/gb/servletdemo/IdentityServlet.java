package com.gb.servletdemo;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IdentityServlet extends HttpServlet{
	/*
	 * 随机生成验证码
	 * */
	public static final char[] CHARS = {'2', '3', 'a','4' ,'5', '6', '7', 'A', 'B', 'C'};
	public static Random random = new Random();
	public static String getRandomString() {               //生成随机字符
		StringBuffer buffer = new StringBuffer();
		for(int i = 0;i < 6; i++) {                    //获取6个随机字符并组成字符串
			buffer.append(CHARS[random.nextInt(CHARS.length)]);
		}
		return buffer.toString();
	}
	public static Color getRandomoColor() {
		return new Color(random.nextInt(255), random.nextInt(255), random.nextInt(255));      //生成随机颜色
	}
	public static Color getReverseColor(Color c) {               //返回某个颜色的反色
		return new Color(255-c.getRed(), 255-c.getGreen(), 255-c.getBlue());
	}
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("请求成功到达");
		// TODO Auto-generated method stub
		//Servlet不仅能输出文本与图片，还能输出其他格式数据，不同的输出类型需要生命不同的ContentType属性，例如JPEG是"image/jpeg",而word是"application/msword"
		resp.setContentType("image/jpeg");         //设置输出类型，必须设置
		String randomString = this.getRandomString();
		req.getSession().setAttribute("randomString", randomString);
		int width = 100;
		int height = 30;
		Color color = this.getRandomoColor();
		Color reverse = this.getReverseColor(color);
		BufferedImage bi = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);      //创建一个彩色图片
		Graphics2D g = bi.createGraphics();                           //获取绘图对象
		g.setFont(new Font(Font.SANS_SERIF, Font.BOLD, 16));           //设置字体
		g.setColor(color);                                          //设置画笔颜色
		g.fillRect(0, 0, width, height);                           //绘制背景
		g.setColor(reverse);                                      //重新设置画笔颜色，用来绘制字符串
		g.drawString(randomString, 18, 20);
		for(int i = 0, n = random.nextInt(100); i < n; i++) {
			//绘制噪音点
			g.drawRect(random.nextInt(width), random.nextInt(height), 1, 1);
		}
		//通过HttpServletResponse获取的PrintWriter对象只能写字符型的数据，如果需要在客户端写二进制的数据，需要使用HttpServletResponse.getOutputStream()
		ServletOutputStream out = resp.getOutputStream();
		ImageIO.write(bi, "jpeg", out);
		out.flush();
	}
}
