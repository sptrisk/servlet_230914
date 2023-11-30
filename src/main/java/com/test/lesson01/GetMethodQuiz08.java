package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz08")
public class GetMethodQuiz08 extends HttpServlet{

	@Override 
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		String keyword = request.getParameter("keyword");
		
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		
		
		
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>맛집</title></head><body>");
		
		for(int i = 0; i < list.size(); i++) {
			if (list.get(i).contains(keyword)) {
				// keyword가 나오는 인덱스를 다시 반복문을 돌려서 찾기
				//for(int j = 0; i < list.get(i).length(); j++)	
				//list.set(i, keyword)
				
				// replace 함수로 치환해주기
				out.print(list.get(i).replace(keyword, "<b>"+keyword+"</b>")+ "<br>");
//				out.print(list.get(i)+"<br>");
				
			}
		}
		
		
		
		// iterator
		
//		Iterator<String> iter = list.iterator();
//		while(iter.hasNext()) {
//			String line = iter.next();
//			if (line.contains(keyword)) {
//				out.print(line + "<br>");
//			}
//		}
		
		
		
		
		out.print("</body></html>");
		
	}
}
