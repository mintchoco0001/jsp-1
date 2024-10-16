<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
div {
	background-color: yellow
}
</style>
<title>Insert title here</title>
</head>
<body>
	<div>
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

		<p>
			name :
			<%=name%></p>
		<p>
			age :
			<%=age%></p>
	</div>

</body>
</html>