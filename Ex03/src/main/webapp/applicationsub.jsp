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
	String name = (String) application.getAttribute("name");
	Integer age = (Integer) application.getAttribute("age");
	%>

	<p>
		name :
		<%=name == null ? "값 없음" : name%></p>
	<p>
		age :
		<%=age == null ? "값 없음" : age%></p>
</body>
</html>