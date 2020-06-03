<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	/*Date클래스를 이용해서 이 페이지에 접근한시간을 xxxx년,xx월,xx일 형태로 생성
    	show라는 이름으로 쿠키르를 생성
    	다음페이지에 넘어가서 이 쿠키를 화면에 출력. (만약 쿠키가 없다면 출력하지 않아도 됩니다)
    	*/
    	Date d = new Date();
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년MM월dd일");
		String show = sdf.format(d);
    
    	Cookie nameCookie = new Cookie("show",show);
    	nameCookie.setMaxAge(30);
    	response.addCookie(nameCookie);
    	
    	
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<a href="cookie_quiz01_ok.jsp">쿠키확인하기</a>

</body>
</html>