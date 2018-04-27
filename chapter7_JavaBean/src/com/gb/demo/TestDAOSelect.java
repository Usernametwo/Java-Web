package com.gb.demo;

import java.util.Iterator;
import java.util.List;

import com.gb.demo.factory.DAOFactory;
import com.gb.demo.vo.Emp;

public class TestDAOSelect {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		List<Emp> all = DAOFactory.getIEmpDAOInstance().findAll("");
		Iterator<Emp> iterator = all.iterator();
		while(iterator.hasNext()) {
			Emp emp = iterator.next();
			System.out.println(emp.getEmpno() + " " +emp.getEname() + " ----> " + emp.getJob());
		}
	}

}
