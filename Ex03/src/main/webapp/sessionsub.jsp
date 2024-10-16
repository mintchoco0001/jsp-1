<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String name = (String)session.getAttribute("name");
	Integer age = (Integer)session.getAttribute("age");
	%>
	
	<p>name : <%= name == null ? "값 없음":name %></p>
	<p>age : <%= age == null ? "값 없음":age%></p>
	
	<p>session, request 차이점</p>
	<p>1. sessionsub.jsp, requestsub.jsp 바로 실행해보기</p>
	<p>2. session은 웹브라우저가 꺼질때까지만 유지! 닫으면 사라짐 텝은 상관없음</p>
</body>
</html>