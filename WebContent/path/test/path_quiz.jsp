<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- a태그를 이용해서 req_video페이지로 상대경로, 절대경로로 이동 -->	
	<a href="../../request/req_video.jsp">req_video</a><br>
	<a href="/JSPBasic/request/req_video.jsp"></a>
	<!-- a태그를 이용해서 TestServlet페이지로 상대경로, 절대경로로 이동 -->
	<a href="../../banana">서블릿이동</a>
	<a href="/JSPBasic/banana">서블릿이동</a>
	<!-- img태그를 이용해서 java.png참조 -->	
	<img src="../../request/img/java.png" width="100px" alt="자바">
	<img src="/JSPBasic/request/img/java.png" width=100px" alt="자바">
	
	
</html>
</body>