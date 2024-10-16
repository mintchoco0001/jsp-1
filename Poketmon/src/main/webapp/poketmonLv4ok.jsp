<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String p = request.getParameter("poketmon");
	out.print(p + "!! 너로 정했다!!");
	%>

</body>
</html>