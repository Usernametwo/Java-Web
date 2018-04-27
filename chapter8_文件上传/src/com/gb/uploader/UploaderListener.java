package com.gb.uploader;

import org.apache.commons.fileupload.ProgressListener;

public class UploaderListener implements ProgressListener {

	//记录上传信息的java bean
	private UploadStatus status; 
	public UploaderListener(UploadStatus status) {
		// TODO Auto-generated constructor stub
		this.status = status;
	}
	@Override
	public void update(long bytesRead, long contentLength, int items) {
		// TODO Auto-generated method stub
		status.setByteRead(bytesRead);
		status.setContentLength(contentLength);
		status.setItems(items);
	}

}
