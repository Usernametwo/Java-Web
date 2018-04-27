package com.gb.demo.dao;

import java.util.List;

import com.gb.demo.vo.Emp;

public interface IEmpDAO {           //定义DAO的操作标准
	//要增加的数据对象
	public boolean doCreate(Emp emp) throws Exception;
	
	//返回所有的查询结果
	public List<Emp> findAll(String keyWord) throws Exception;
	
	//根据雇员编号查询雇员的vo对象
	public Emp findById(int empno) throws Exception;
}
