<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
	//request 영역에 저장된 name 과 age  꺼내기]
	String name = (String) request.getAttribute("name");
	Integer age = (Integer) request.getAttribute("age");
	%>

	<p>
		name :
		<%=name == null ? "값 없음" : name%></p>
	<p>
		age :
		<%=age == null ? "값 없음" : age%></p>
	
	<p>request 영역은 페이지 이동하면 사라짐</p>
	<p>그럼 로그인 정보는 request 영역애 저장할까? => NO</p>
	<p>forward 로 왔으면 request 유지됨!</p>
	
</body>
</html>