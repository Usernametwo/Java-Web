package com.gb.demo;

import java.util.HashMap;
import java.util.Map;

public class Register {
	private String name;
	private String age;
	private String email;
	private Map<String, String> errors = null;        //保存错误信息
	public Register() {
		this.name = "";
		this.age = "";
		this.email = "";
		this.errors = new HashMap<>();
		System.err.println("===========对象创建成功==================");
	}
	public boolean isValidate() {
		boolean flag = true;
		if(!this.name.matches("\\w{6,15}")) {         //验证name的内容是否合法
			flag = false;
			this.name = "";
			errors.put("errorname", "用户名是6-15位的字母或者数字");
		}
		if(!this.email.matches("\\w+@\\w+\\.\\w+\\.?\\w")) {
			flag = false;
			this.email = "";
			errors.put("erroremail", "输入的邮箱不正确");
		}
		if(!this.age.matches("\\d+")) {
			flag = false;
			this.age = "";
			errors.put("errorage", "年龄只能是数字");
		}
		return flag;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getErrorMsg(String key) {
		String val = this.errors.get(key);
		return (val == null) ?"":val ;
	}
	
}
