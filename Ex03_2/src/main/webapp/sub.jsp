<%@page import="DTO.Item"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
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
		//session 에 저장한 ArrayList 꺼내기
		ArrayList<String> getday = (ArrayList) session.getAttribute("day");

		for (int i = 0; i < getday.size(); i++) {
			out.print("<li>" + getday.get(i) + "</li>");
		}
		%>
	</ul>

	<h2>session 에 저장된 HashMap 꺼내기</h2>
	<%
	HashMap<String, String> getcolors = (HashMap) session.getAttribute("color");
	out.println("HashMap에 저장된 개수 : " + getcolors.size());
	out.println("빨강 : " + getcolors.get("빨강"));
	out.println("분홍 : " + getcolors.get("분홍"));
	%>
	<%
	Item item1 = (Item)(session.getAttribute("item1"));
	out.print(item1.getTitle()+" : " + item1.getPrice() + "원");
	
	Item item2 = (Item)(session.getAttribute("item2"));
	out.print(item2.getTitle()+" : " + item2.getPrice() + "원");
	
	Item item3 = (Item)(session.getAttribute("item3"));
	out.print(item3.getTitle()+" : " + item3.getPrice() + "원");
	%>
</body>
</html>