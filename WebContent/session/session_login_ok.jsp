<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	/*
    	1.아이디,비밀번호,nick을 받습니다.
    	2.아이디 비밀번호가 동일하면 (user_id,id)의 세션생성
		(user_nick, 닉네임)을 세션을 생성
		
		session_welcome로 이동해서 화면에 "id님 환영합니다"
		틀린경우는 로그인페이지로 리다이렉트 
    	*/
    	request.setCharacterEncoding("utf-8");
    
    	String id = request.getParameter("id");
    	String pw = request.getParameter("pw");
    	String nick = request.getParameter("nick");
    	%>
    		<script>
    		/*
    		HTML에서 스크립트의 사용은 script태그를 씁니다
    		변수: var a =  1;
    		함수: function 이름(){
    			
    		}
    		자바스크립트내장함수
    		alert(); 경고장
    		confirm(); -확인창
    		history.go(-1); - 뒤로가기
    		location.href = "경로";
    		*/
    		name();
    		alert("로그인에 실패했습니다");
    		location.href = "session.login.jsp";
    		var a = function(){
    			
    		}
    		name(a);
    		function name(a){
    			
    		}
    		</script>
    	<% 
    	if(id.equals(pw)){    		
    		session.setAttribute("user_id", id);
    		session.setAttribute("user_nick", nick);
    		response.sendRedirect("session_welcome.jsp");
    	}else{
    		response.sendRedirect("session_login.jsp");
    	}
    	
    %>
<script>

</script>