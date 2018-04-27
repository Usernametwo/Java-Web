package com.gb.demo.dao.proxy;

import java.util.List;

import com.gb.demo.dao.IEmpDAO;
import com.gb.demo.dao.impl.EmpDaoImpl;
import com.gb.demo.dbc.DatabaseConnection;
import com.gb.demo.vo.Emp;

//真正负责打开和关闭数据库的操作将由代理类完成
public class EmpDAOProxy implements IEmpDAO{
	private DatabaseConnection dbc = null;
	private IEmpDAO dao = null;
	public EmpDAOProxy() throws Exception{
		// TODO Auto-generated constructor stub
		this.dbc = new DatabaseConnection();
		this.dao = new EmpDaoImpl(this.dbc.getConnection());
	}
	
	@Override
	public boolean doCreate(Emp emp) throws Exception {
		// TODO Auto-generated method stub
		boolean flag = false;
		try {
			if(this.dao.findById(emp.getEmpno()) == null) {
				//如果要插入的雇员编号不存在再执行插入
				flag = this.dao.doCreate(emp);
			}
		} catch (Exception e) {
			// TODO: handle exception
			throw e;
		} finally {
			this.dbc.close();
		}
		return flag;
	}

	@Override
	public List<Emp> findAll(String keyWord) throws Exception {
		// TODO Auto-generated method stub
		List<Emp> all = null;
		try {
			all = this.dao.findAll(keyWord);
		} catch (Exception e) {
			// TODO: handle exception
			throw e;
		} finally {
			this.dbc.close();
		}
		return all;
	}

	@Override
	public Emp findById(int empno) throws Exception {
		// TODO Auto-generated method stub
		Emp emp = null;
		try {
			emp = this.dao.findById(empno);
		} catch (Exception e) {
			// TODO: handle exception
			throw e;
		} finally {
			this.dbc.close();
		}
		return emp;
	}
	
}
