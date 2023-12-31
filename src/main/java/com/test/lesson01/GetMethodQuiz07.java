package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz07")
public class GetMethodQuiz07 extends HttpServlet{

		
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 한글 깨짐 방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		// request parameter 꺼내기
		String address = request.getParameter("address");
		String creditCard = request.getParameter("creditCard");
		String price = request.getParameter("price");
		
		
		// 응답 HTML 화면
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>주문 결과</title></head><body>");

		// 조건문
		if (address.startsWith("서울시") == false) {
			out.print("배달 불가 지역입니다.");
		} else if (creditCard.equals("신한카드")) {
			out.print("결제 불가 카드입니다.");
		} else {
			out.print(address);
			out.print("<b> 배달 준비중</b><br>");
			out.print("결제 금액 : " + price + "원");
		}
		
		
		out.print("</body></html>");
	}
}
