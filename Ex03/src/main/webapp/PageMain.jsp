<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!Integer age = null;
	String name = null;%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Page 영역</h1>
	<p>페이지당 한개 씩 생성</p>
	<p>JSP 파일 안에서만 유효! private</p>
	<p>쓸일은 많이 없지만 커스텀테그 사용할때 쓰긴 한다</p>

	<%
	//page 영역에 값 저장
	pageContext.setAttribute("name", "이디오");
	pageContext.setAttribute("age", 4);
	%>

	<%
	//page 영역에서 값 꺼내기
	name = (String) pageContext.getAttribute("name");
	age = (Integer) pageContext.getAttribute("age");
	%>

	<p>
		name :
		<%=name%>
	</p>
	<p>
		age :
		<%=age%></p>
		
		

	<a href="pageSub.jsp">다음 페이지로~</a>

	<h1>아래는 인클루드 영역</h1>
	<%@ include file="pageinclude.jsp"%>
</body>
</html>