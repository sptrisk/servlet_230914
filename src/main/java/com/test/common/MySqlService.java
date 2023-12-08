package com.test.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MySqlService {
	
	private static MySqlService mysqlService = null;
	
	// 도메인 뒤에 접속할 데이터베이스명까지 적는다.
	private static final String url = "jdbc:mysql://localhost:3307/test_230914";
	private static final String id = "root";
	private static final String password = "root";
	
	
	private Connection conn = null;
	private Statement statement;
	private ResultSet res;
	
	
	// Singleton 패턴 : MySqlService라는 객체가 단 하나만 생성되도록 하는 디자인 패턴
	//	 			   DB 연결을 여러 객체에서 하지 않도록
	
	public static MySqlService getInstance() {
		if (mysqlService == null) {
			mysqlService = new MySqlService();   // null 일때 한번만 생성하고
		}
		
		return mysqlService;					// 그렇지 않으면 현재 메소드를 반환한다.
	}
	
	
	
	// DB 접속
	public void connect() {
		try {
			// 1. 드라이버를 메모리에 로딩한다.
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			// 2. DB Connection
			conn = DriverManager.getConnection(url, id, password);
			
			// 3. 쿼리 실행 준비 => statement
			statement = conn.createStatement();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	// DB 접속 해제
	public void disconnect() {
		try {
			statement.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// CUD
	public void update(String query) throws SQLException {
		statement.executeUpdate(query);
	}
	
	// R
	public ResultSet select(String query) throws SQLException {
		res = statement.executeQuery(query);
		return res;
	}
	
	
}
