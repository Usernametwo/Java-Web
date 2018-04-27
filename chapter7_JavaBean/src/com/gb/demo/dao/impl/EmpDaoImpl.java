package com.gb.demo.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.gb.demo.dao.IEmpDAO;
import com.gb.demo.vo.Emp;

public class EmpDaoImpl implements IEmpDAO{
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	public EmpDaoImpl(Connection conn) {
		// TODO Auto-generated constructor stub
		this.conn = conn;
	}
	
	@Override
	public boolean doCreate(Emp emp) throws Exception {
		// TODO Auto-generated method stub
		boolean flag = false;
		String sql = "INSERT INTO EMP(EMPNO,ENAME,JOB,HIREDATE,SAL) VALUES (?,?,?,?,?)";
		this.pstmt = this.conn.prepareStatement(sql);
		this.pstmt.setInt(1, emp.getEmpno());
		this.pstmt.setString(2, emp.getEname());
		this.pstmt.setString(3, emp.getJob());
		this.pstmt.setDate(4, emp.getHiredate());
		this.pstmt.setFloat(5, emp.getSal());
		if(this.pstmt.executeUpdate() > 0) {
			//更新记录的行数大于0
			flag = true;
		}        
		this.pstmt.close();
		return flag;
	}

	@Override
	public List<Emp> findAll(String keyWord) throws Exception {
		// TODO Auto-generated method stub
		List<Emp> all = new ArrayList<>();
		String sql = "SELECT EMPNO,ENAME,JOB,HIREDATE,SAL FROM EMP WHERE ENAME LIKE ? OR JOB LIKE ?";
		this.pstmt = this.conn.prepareStatement(sql);
		this.pstmt.setString(1, "%" + keyWord + "%");             //设置查询关键字
		this.pstmt.setString(2, "%" + keyWord + "%");
		ResultSet rs = this.pstmt.executeQuery();
		Emp emp = null;
		while(rs.next()) {
			emp = new Emp();
			emp.setEmpno(rs.getInt(1));
			emp.setEname(rs.getString(2));
			emp.setJob(rs.getString(3));
			emp.setHiredate(rs.getDate(4));
			emp.setSal(rs.getFloat(5));
			all.add(emp);
		}
		this.pstmt.close();
		return all;
	}

	@Override
	public Emp findById(int empno) throws Exception {
		// TODO Auto-generated method stub
		Emp emp = null;
		String sql = "SELECT EMPNO,ENAME,JOB,HIREDATE,SAL FROM EMP WHERE EMPNO=?";
		this.pstmt = this.conn.prepareStatement(sql);
		this.pstmt.setInt(1, empno);
		ResultSet rs = this.pstmt.executeQuery();
		while(rs.next()) {
			emp = new Emp();
			emp.setEmpno(rs.getInt(1));
			emp.setEname(rs.getString(2));
			emp.setJob(rs.getString(3));
			emp.setHiredate(rs.getDate(4));
			emp.setSal(rs.getFloat(5));
		}
		this.pstmt.close();
		return emp;
	}
	
}
