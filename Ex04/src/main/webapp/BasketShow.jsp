<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
HashMap<String, String> item = new HashMap<>();
item.put("item1", "냄비두껑");
item.put("item2", "빨간포션");
item.put("item3", "파란포션");
item.put("item4", "마을_귀환_주문서");
item.put("item5", "마나_엘릭서");
item.put("item6", "빨간_달팽이의_껍질");
item.put("item7", "아르웬의_유리구두");
item.put("item8", "슈미가_잃어버린_동전");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Cookie[] cookies = request.getCookies();

	for (Cookie c : cookies) {
		if (c.getName().contains("item")) {
			out.print(c.getValue());
			if (c.getValue().equals("item")) {

			}
		}
	}
	%>
</body>
</html>