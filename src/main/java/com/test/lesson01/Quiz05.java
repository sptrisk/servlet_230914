package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz05")
public class Quiz05 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		int number = Integer.parseInt(request.getParameter("number"));
		
		
		PrintWriter out = response.getWriter();
		out.println("<html><head><title>");
		out.println("구구단 " + number + "단 출력</title></head><body>");
		for(int i = 1; i <= 9; i ++) {
			out.print("<li>" + number + " X " + i + " = " + number * i + "</li>");
		}
		out.print("</body></html>");
	}
}
