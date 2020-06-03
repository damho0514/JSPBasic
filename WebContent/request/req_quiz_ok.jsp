<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String height = request.getParameter("height");
	String weight = request.getParameter("weight");
	
	double cm = Double.parseDouble(height);
	double kg = Double.parseDouble(weight);
	double bmi = kg/ (cm /100 * cm/100);
	
	String.format("%.2f", bmi);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h2>결과</h2>
	이름:<%=name %><br>
	신장:<%=height %><br>
	몸무게:<%=weight %><br>
	BMI:<%=bmi %><br>
	
	<%
		if(bmi >= 25){%>
			<b>과체중입니다</b>
		<%}else if(bmi <=18){%>
			<b>저체중입니다</b>
		<%}else{%>
			<b>정상 입니다</b>
		<%}%>
		
	%>
</body>
</html>