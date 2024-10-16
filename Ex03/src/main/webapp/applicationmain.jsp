<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Application 영역에 저장</h1>
	<%
	application.setAttribute("name", "구디오");
	application.setAttribute("age", 9);
	%>

	<a href="applicationsub.jsp">젤다</a>
	
	<form action="remove.jsp" method="get">
	<label>지우고싶은 key 값 <input type="text" name="del"> </label>
	<input type="submit" value="삭제하기">
	</form>
	
	<br><br><br><br><br><br><br>
	
	<a href="remove.jsp?value=name">name값 지우는 젤다</a>
</body>
</html>