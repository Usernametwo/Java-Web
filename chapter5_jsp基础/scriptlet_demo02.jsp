<%@ page language="java" pageEncoding="utf-8"%>
<%!
    public static final String INFO = "Hello World";      //定义全局变量
%>

<%!
    public int add(int x, int y) {                //定义方法
        return x + y; 
    }
%>

<%!                                                  //类,尽量不要在jsp中定义类或者方法,一般通过javabean的形式调用
    class Person{
        private String name;
        private int age;
        public Person(String name, int age){
            this.name = name;
            this.age = age;
        }
        public String toString() {
            return "name=" + this.name + ";age=" +this.age;
        }
    }
%>

<%        //编写普通的Scriptlet
    out.println("<h3>INFO=" + INFO + "</h3>");               //输出全局变量
    out.println("<h3>3 + 5" + add(3, 5) + "</h3>");             //调用方法
    out.println("<h3>" + new Person("Usernametwo", 50) + "</h3>");  //生成对象

%>