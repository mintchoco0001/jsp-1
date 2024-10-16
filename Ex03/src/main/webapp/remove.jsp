<%@page import="org.apache.jasper.tagplugins.jstl.core.Remove"%>
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
	String name = request.getParameter("del");
	Integer age = (Integer) application.getAttribute("age");
	application.removeAttribute("del");
	out.println("삭제완료");
	%>

</body>
</html>