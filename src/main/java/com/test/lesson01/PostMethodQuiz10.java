package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz10")
public class PostMethodQuiz10 extends HttpServlet{

		@Override
		public void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException {
			response.setContentType("text/html");
			
			String id = request.getParameter("id");
			String password = request.getParameter("password");
			
			PrintWriter out = response.getWriter();
			
			Iterator<String> iter = userMap.keySet().iterator();
			while (iter.hasNext()) {
				String key = iter.next();
				if (!key.equals(id)) {
					out.print("id가 일치하지 않습니다.");
				}
			} if (!key.equals(password)) {
				
			}
			
		}
		
		private final Map<String, String> userMap =  new HashMap<String, String>() {
		    {
		        put("id", "marobiana");
		        put("password", "qwerty1234");
		        put("name", "신보람");
		    }
		};
		
		
}
