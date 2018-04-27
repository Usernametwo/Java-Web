package com.gb.uploader;

public class UploadStatus implements Comparable<UploadStatus>{
	private long byteRead;        //已上传的总字节树
	private long contentLength;     //所有文件的总长度
	private int items;              //正在上传的有几个文件
	private long startTime = System.currentTimeMillis();     //开始上传时间
	public long getByteRead() {
		return byteRead;
	}
	public void setByteRead(long byteRead) {
		this.byteRead = byteRead;
	}
	public long getContentLength() {
		return contentLength;
	}
	public void setContentLength(long contentLength) {
		this.contentLength = contentLength;
	}
	public int getItems() {
		return items;
	}
	public void setItems(int items) {
		this.items = items;
	}
	public long getStartTime() {
		return startTime;
	}
	public void setStartTime(long startTime) {
		this.startTime = startTime;
	}
	@Override
	public int compareTo(UploadStatus o) {
		// TODO Auto-generated method stub
		return (int)(this.getByteRead() - o.getByteRead());
	}
	
}
