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
	//request 영역에 값 저장
	request.setAttribute("name", "삼디오");
	request.setAttribute("age", 99);
	%>

	<%
	//request 영역에 저장된 name 과 age  꺼내기]
	String name = (String) request.getAttribute("name");
	Integer age = (Integer) request.getAttribute("age");
	%>

	<p>
		name :
		<%=name%></p>
	<p>
		age :
		<%=age%></p>

	<a href="requestsub.jsp">페이지 이동하기</a>

	<%
	request.getRequestDispatcher("requestsub.jsp")
	.forward(request, response);
	//원래 링크 이동하면 request 값 사라지지만 forward로 이동하면 가지고 감
	%>


</body>
</html>