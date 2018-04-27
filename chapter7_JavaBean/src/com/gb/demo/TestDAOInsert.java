package com.gb.demo;

import java.sql.Date;

import com.gb.demo.factory.DAOFactory;
import com.gb.demo.vo.Emp;

public class TestDAOInsert {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		Emp emp = null;
		for(int x=0; x<5; x++) {
			emp = new Emp();
			emp.setEmpno(x);
			emp.setEname("李胜辉 -" + x);
			emp.setJob("程序员-" + x);
			emp.setHiredate(new Date(234322224));
			emp.setSal(500*x);
			DAOFactory.getIEmpDAOInstance().doCreate(emp);
		}
	}

}
