package com.gb.demo.factory;

import com.gb.demo.dao.IEmpDAO;
import com.gb.demo.dao.proxy.EmpDAOProxy;

public class DAOFactory {
	public static IEmpDAO getIEmpDAOInstance() throws Exception {
		return new EmpDAOProxy();
	}
}
