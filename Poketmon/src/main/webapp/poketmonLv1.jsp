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
	String v = request.getParameter("value");
	out.print(v+"�ʷ� ���ߴ�!!");
	%>

</body>
</html>