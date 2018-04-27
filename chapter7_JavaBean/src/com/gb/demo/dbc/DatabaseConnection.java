package com.gb.demo.dbc;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnection {
	private static final String DBDRIVER="com.mysql.jdbc.Driver";
	private static final String DBURL="jdbc:mysql://localhost:3306/test";
	private static final String DBUSER="root";
	private static final String DBPASSWORD="GUOBEI.4";
	private Connection connection = null;
	public DatabaseConnection() throws Exception {
		try {
			Class.forName(DBDRIVER);
			this.connection = DriverManager.getConnection(DBURL, DBUSER, DBPASSWORD);
		} catch (Exception e) {
			throw e;
		}
	}
	
	public Connection getConnection() {
		return this.connection;
	}
	
	public void close() throws Exception {
		if(this.connection != null) {
			try {
				this.connection.close();
			} catch (Exception e) {
				// TODO: handle exception
				throw e;
			}
		}
	}
}
