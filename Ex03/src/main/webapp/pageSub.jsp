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
	//page 영역에서 값 꺼내기
	String name = (String) pageContext.getAttribute("name");
	Integer age = (Integer) pageContext.getAttribute("age");

	if (name == null) {
		out.println("name은 null!!");
	}
	if (age == null) {
		out.println("age는 null!!");
	}
	%>
	<p>page 영역에 저장한 값은 페이지가 넘어가면 유효하지 않다</p>
	<p>
		name :
		<%=name%>
	</p>
	<p>
		age :
		<%=age%></p>
</body>
</html>