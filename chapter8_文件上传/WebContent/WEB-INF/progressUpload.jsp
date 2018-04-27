<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body, td, div {font-size:12px;font-family:宋体}
	#progressBar{width:400px;height:12px;background:#FFFFFF;border:1px solid #000000; padding:1px;}
	#progressBarItem{width:30%;height:100%;background:#FF0000}
</style>
</head>
<body>
	<!-- 用来隐藏提交时候的白屏 -->
	<iframe name=upload_iframe width=0 height=0></iframe>
	<form action="ProgressUploadServlet" method="post" enctype="multipart/form-data" target="upload_iframe" onsubmit="showStatus();">
		<input type="file" name="file1" style="width:350px;"/> <br/>
		<input type="file" name="file2" style="width:350px;"/> <br/>
		<input type="file" name="file3" style="width:350px;"/> <br/>
		<input type="file" name="file4" style="width:350px;"/> <br/>
		<input id="btnSubmit" type="submit" value="submit" />
		<input type="reset" value="reset" />
	</form>
	<div id="status" style="display:none">
		上传进度条：
		<div id="progressBar">
			<div id="progressBarItem"></div>
		</div>		
	</div>
	<div id="statusInfo">
	</div>
	<script language="javascript">
		var finished = true;
		function $(obj) {            //快速返回id为obj的HTML对象
			return document.getElementById(obj);
		}
		function showStatus() {
			finished = false;
			$('status').style.display = 'block';         //将进度条显示出来
			$('progressBarItem').style.width = '1%';     //将进度条置为1%
			$('btnSubmit').disabled = true;        //将提交按钮置灰
			setTimeout("requestStatus()", 1000);      //1s后执行这个方法
		}
		function requestStatus() {
			if(finished) return;
			var req = createRequest();             //获取XMLHttpRequest对象
			req.open("GET", "ProgressUploadServlet");         //设置请求路径
			req.onreadystatechange = function() {callback(req);} //设置回调函数
			req.send(null);
			setTimeout("requestStatus()", 1000);         //1s后重新请求这个方法
		}
		function createRequest() {
			if(window.XMLHttpRequest) {
				return new XMLHttpRequest();
			} else {
				return new ActiveXObject("Microsoft.XMLHTTP");
			}
		}
		function callback(req) {
			if(req.readyState == 4) {
				if(req.status != 200) {
					debug("发生错误.req.status:" + req.status + "");
					return;
				}
				debug("status.jsp返回值:" + req.responseText);
				var ss = req.responseText.split("||");
				$('progressBarItem').style.width = "" + ss[0] + "%";
				$('statusInfo').innerHTML = '已完成百分比：' + ss[0] + "% <br/>已完成数(M):" + ss[1] + "<br/>文件总长度:" + ss[2] + "<br/>传输速率:" + ss[3] + "<br/>已用时间:" + ss[4] + "<br>估计总时间:" + ss[5] + "<br>估计剩余时间：" + ss[6] + "<br>正在上传第几个文件:" + ss[7];
				if(ss[1] == ss[2]) {
					finished = true;
					$('statusInfo').innerHTML = "<br><br><br>已上传完成";
					$('btnSubmit').disabled = false;
				}
			}
		}
		function debug(obj) {
			var div = document.createElement("DIV");
			div.innerHTML = "[debug]:" + obj;
			document.body.append(div);
		}
	</script>
</body>
</html>