package com.gb.uploader;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class ProgressUploadServlet extends HttpServlet {
	//get获取文件的进度信息
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doGet方法调用");
		resp.setHeader("Cache-Control", "no-store");     //禁止浏览器缓存
		resp.setHeader("Progrma", "no-cache");        //禁止浏览器缓存
 		resp.setDateHeader("Expires", 0);             //禁止浏览器缓存
 		UploadStatus status = (UploadStatus) req.getSession().getAttribute("uploadStatus");        //从session中读取上传信息
 		if(status == null) {
 			resp.getWriter().println("没有上传信息");
 			return;
 		}
 		long startTime = status.getStartTime();
 		long currentTime = System.currentTimeMillis();
 		long time = (currentTime - startTime) / 1000 + 1;      //已传输的时间
 		double velocity = ((double) status.getByteRead()) / ((double) time);         //传输速度
 		double totalTime = status.getContentLength() / velocity;          //估计总时间
 		double timeLeft = totalTime - time;             //剩余总时间
 		int percent = (int) ((100 * (double) status.getByteRead()) / ((double) status.getContentLength()));
 		double length = ((double) status.getByteRead()) / 1024 / 1024;     //总长度单位M
 		double totalLength = ((double) status.getContentLength()) / 1024 / 1024;
 		
 		String value = percent + "||" + length + "||" + totalLength + "||" + velocity + "||" + time + "||" + totalTime + "||" + timeLeft + "||" + status.getItems();
 		resp.getWriter().println(value);
	}
	//post上传文件
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("调用doPost方法");
		UploadStatus uploadStatus = new UploadStatus();          //上传状态
		UploaderListener uploaderListener = new UploaderListener(uploadStatus);     //监听器
		req.getSession().setAttribute("uploadStatus", uploadStatus);          //将状态放到session里面
		ServletFileUpload upload = new ServletFileUpload(new DiskFileItemFactory());
		upload.setProgressListener(uploaderListener);                          //设置上传listener
		try {
			List itemList = upload.parseRequest(req);
			for(Iterator it = itemList.iterator();it.hasNext();) {
				//遍历所有参数
				FileItem item = (FileItem) it.next();
				if(item.isFormField()) {                       
					//如果是表单数据
					System.out.println("FormFiled:" + item.getFieldName() + "=" + item.getString());
				} else {
					//如果是上传的文件
					System.out.println("File:" + item.getName());
					//统一Linux与windows的分隔符
//					String filename = item.getName().replace("/", "\\");
//					System.out.println("filename:" + filename);
//					filename = filename.substring(filename.lastIndexOf("\\"));
//					System.out.println("filename:" + filename);
					File saved = new File("C://upload_test", item.getName());
					System.out.println("文件保存路径：" + saved.getPath());
					//保证路径存在
					saved.getParentFile().mkdirs();
					InputStream ins = item.getInputStream();
					//输出流
					OutputStream out = new FileOutputStream(saved);
					//缓存
					byte[] temp = new byte[1024];
					int len = -1;
					while((len = ins.read(temp)) != -1) {
						out.write(temp, 0 , len);
					}
					out.close();
					ins.close();
					resp.getWriter().println("已保存文件");
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			resp.getWriter().println("上传文件错误" + e.getMessage());
		}
	}
}
