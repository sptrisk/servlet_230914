<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
</head>
<body>
	<h1>길이 변환 결과</h1>
	<% double length = (double)Integer.parseInt(request.getParameter("length")); %>
	<div class="display-4"><%=length %>cm</div>
	<hr>
	<%
		
		String[] IU = request.getParameterValues("Unit");
		for (String Unit : IU)
	
	
	%>
	
</body>
</html>