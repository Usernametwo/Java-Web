package com.gb.demo;

public class SimpleBean {
	//JavaBean中要求应该存在一个无参构造方法，但是如果一个类中没有明确的定义一个构造方法，会自动生成一个无参构造方法
	//所以没有什么错误d
	private String name;
	private int age;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
}
