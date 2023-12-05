<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
<!-- bootstrap CDN -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
	<h1>길이 변환 결과</h1>
	<% int length = Integer.parseInt(request.getParameter("length")); 
		String[] Units = request.getParameterValues("Unit");
	%>
	<h3><%=length %>cm</h3>
	<hr>
	<h2>
	<% 
	double result;
	if(Units != null){
		for (String Unit : Units) {
			if (Unit.equals("inch")) {
				result = length * 0.393701;
				out.print(result + " inch<br>");
			} else if (Unit.equals("yard")){
				result = length * 0.0109361;
				out.print(result + " yard<br>");
			} else if (Unit.equals("feet")){
				result = length * 0.0328084;
				out.print(result + " feet<br>");
			} else if (Unit.equals("mile")){
				result = length / 160900.0;
				out.print(result + " mile<br>");
			} else if (Unit.equals("meter")){
				result = length * 0.01;
				out.print(result + " meter<br>");
			}
				 
		}
	}
	
	
	
	%>
	</h2>
	</div>
	
</body>
</html>