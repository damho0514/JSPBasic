<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%!
    String[] kakao = {"프로도","무지","어피치","제이지","프로도","라이언"};
    
   	List<String> list = new ArrayList<>();
    %>
    <%
    
    Random ran = new Random();
    String str =kakao[ran.nextInt(6)];
    
   	if(list.size()>=10){
   		list.clear();
   	}
   	list.add(str);
 
    int count = 0;
   	for(int i = 0; i<list.size(); i++){
   		if(list.get(i).equals(str)){
   			count++;
   		}
   	}
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	
	<strong>[<%=str %>]</strong>님이 입장<br>
	현재 같은 카카오 프렌즈는 <%=count %>명입니다
	<h1>현재 구성정보</h1><br>
	<%=list.toString() %>(<%=list.size() %>명 참가중)
</body>
</html>