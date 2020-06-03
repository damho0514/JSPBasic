<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 스크립트릿, 선언자, 표현식을 적절히 사용 --%>
	
	<%!
	public int total = 1;	
%>
<%
	Random ran = new Random();
	int num = ran.nextInt(8) + 2;
	
	total++;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<p>
	<%=total %>번째 방문자 입니다<br>
	<% if(total % 10 ==0){%>
		당첨되셨습니다.
	<%}%>
	</p>
	
	<hr>
	
	<h3>랜덤구구단<%=num %>단</h3>
	<% for(int i = 1; i <= 0 ; i++){%>
	

		
	<%}%>
</body>
</html>