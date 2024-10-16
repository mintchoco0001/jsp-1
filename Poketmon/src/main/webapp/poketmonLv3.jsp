<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String[] poke = request.getParameterValues("poketmon");

	String str = "";
	for (int i = 0; i < poke.length; i++) {
		str += poke[i] + " ";
	}
	%>
	<p><%= str %> !! 도와줘 애들아!!</p>
</body>
</html>