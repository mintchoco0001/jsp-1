<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>session 은 브라우저가 종료될때까지 유지!</p>
	<p>크롬 껏다 켜면 로그아웃 됨!</p>
	<p>=> 로그인 정보가 session에 저장되어 있기 때문!</p>
	<p>모든페이지가 공유</p>
	<p>=> naver 메인에서 로그인 하면 모든 페이지에서 로그인 유지!</p>
	<p>쿠키 => 오늘 하루 열지 않기, 아이디 저장 등등</p>
	<p>세션 => 웹브라우저 켜고 끌때까지만 유지</p>
	
	<%
	session.setAttribute("name", "칠디오");
	session.setAttribute("age", 77);
	%>

	<a href="sessionsub.jsp">sub로 이동</a>	
</body>
</html>