package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MySqlService;

@WebServlet("/lesson04/quiz01")
public class lesson04Quiz01 extends HttpServlet{
	@Override 
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		// 연결
		MySqlService ms = MySqlService.getInstance();
		ms.connect();
		
		// insert
		String insertQuery = "insert into `real_estate`"
				+ "(`realtorId`,`address`,`area`,`type`,`price`,`rentPrice`)"
				+ "values"
				+ "(3,	'헤라펠리스 101동 5305호', 350,	'매매', 1500000, NULL)";
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		// 출력
		PrintWriter out = response.getWriter();
		String query = "select * from `real_estate` order by `id` desc limit 10";
		
		try {
			ResultSet res = ms.select(query);
			while (res.next()) {
				out.println("매물 주소 : " + res.getString("address") +" 면적 : " + res.getInt("area") +" 타입 : " + res.getString("type"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		// DC
		ms.disconnect();
		
		
		
	}
	

	
	
	
}
