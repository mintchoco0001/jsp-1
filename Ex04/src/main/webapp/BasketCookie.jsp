<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<%
		request.setCharacterEncoding("UTF-8");
		String[] item = request.getParameterValues("item");
		for (String i : item) {
			out.print("<li>" + i + "</li>");
		}

		for (int i = 0; i < item.length; i++) {
			Cookie cookie = new Cookie(item[i], item[i]);
			cookie.setPath(request.getContextPath());
cookie.getMaxAge();

			response.addCookie(cookie);
		}
		%>
	</ul>
</body>
</html>