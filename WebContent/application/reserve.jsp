<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	//인증이 없는 사람은 접근하지 못하도록 처리
    	if(session.getAttribute("authYN")==null){
    		response.sendRedirect("auth.jsp");
    	}
    	
    	//화면에 들어왔을 떄 app좌석정보가 있다면, 정보를 얻어옵니다.
    	List<String> list = new ArrayList<>();
    	if(application.getAttribute("list") != null){
    		list = (List<String>)application.getAttribute("list");
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h2 align="center">영화 좌석 예약</h2>
		<h3 align="center">예약할 좌석을 체크한 후 예약 버튼을 클릭하세요.</h3>
		<hr>
		<h3 align="center">좌석배치도</h3>
<form action="reserve_ok.jsp" method="post">
<div align="center">
<table>
	<tr align="center">
		<td align="center"><strong></strong></td>
		<%for(char a= 'A'; a<='Z'; a++){ %>
		<td align = "center"><strong><%=a %></strong></td>
		<%}%>
		</tr>
	<tr>
	<%for(int i =1; i<=6; i++){ %>
	<td align="center"><strong><%=i %></strong></td>
	<%for(char a= 'A'; a<='Z'; a++){%>
		<td align="center"><strong><input type="checkbox" name = "seat" value="<%=a %>-<%=i %>" disabled></strong></td>
		<%}%>
		
	</tr>
	<%if(i==3){%>
	<tr align="center">
		<td align="center"colspan="27"><strong></strong></td>
	</tr>
	<%}
	}%>
	<tr align="center">
			<td align="center" colspan="27"><strong></strong></td>
	</tr>
	<tr align="center">
		<td align="center" colspan="27"><strong><input type ="submit" value="예약"> <input type="reset" value="취소"></strong></td>
	</tr>
</table>
</div>
</form>
</body>
</html>