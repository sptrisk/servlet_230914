
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>
<%!
	public int getSum(int N){
		int sum = 0;
	for (int i = 1; i <= N; i++){
		sum += i;
		}
		return sum;
	}
%>
<h1>1부터 50까지의 합은 <%= getSum(50)%>입니다. </h1>

	
	
<%  int[] scores = {80, 90, 100, 95, 80}; %>
<%	double avg;
	int sum = 0;
	for(int i = 0; i < scores.length; i++){
		sum += scores[i];
	}
	avg = (double)sum / scores.length;
%>
<h1>평균 점수는 <%= avg%>입니다.</h1>


<%List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"}); %>
<%
int totalSum = 0;
for (int i = 0; i < scoreList.size(); i++){
	if (scoreList.get(i).equals("O")){
		totalSum+=10;
	}
}
%>
<h1>채점 결과는 <%= totalSum%>점 입니다.</h1>


<% String birthDay = "20010820"; %>
<%
   String yearStr = birthDay.substring(0, 4);
   //out.print(yearStr);
   int age = 2023-Integer.valueOf(yearStr);
%>

<h1>20010820의 나이는 <%= age%>세 입니다.</h1>





</body>
</html>