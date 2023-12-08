<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="col-2">
	<h2 class="text-success">Melong</h2>
</div>
<div class="col-10">
	<form method="get" action="/lesson03/quiz02/content_layout.jsp">
		<div class="d-flex">	
		<input type="text" class="form-control col-6" name="search" 
		<% if (request.getParameter("search") != null) {		
		%>
		value="<%=request.getParameter("search") %>"
		<% } %>>
		<div>
			<input type="submit" class="btn btn-info" value="검색">
		</div>
		</div>
	</form>
</div>