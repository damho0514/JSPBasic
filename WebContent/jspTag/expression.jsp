<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%!
 	 String name = "홍길자";
	 int age = 20;
	
%>
<%
	String email = "abc123@naver.com";
	String address = "서울시";
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		out.println("이름:" + name + "<br>");
		out.println("나이:" + age + "<br>");
	%>
	
	이름:<%=name %><br>
	나이:<%=age %><br>
	메일:<%=email %><br>
	주소:<%=address %><br>
</body>
</html>