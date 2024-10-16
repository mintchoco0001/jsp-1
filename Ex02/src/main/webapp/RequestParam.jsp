<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String area = request.getParameter("area");
	String[] food = request.getParameterValues("food");

	//배열이 정장된 값이 문자열로 파싱(Parsing)
	String str = "";
	for (int i = 0; i < food.length; i++) {
		str += food[i] + " ";
	}
	%>

	<ul>
		<li>이름 : <%= name %></li>
		<li>사는 곳 : <%= area %> </li>
		<li>좋아하는 음식 : <%= str %> </li>
	</ul>

</body>
</html>