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
	<h1>main 에서 sub 로 다양한 형태의 데이터 넘겨주기</h1>
	<p>내장객체의 영역중에서 뭘 사용하면 좋을까?</p>
	<p>영역에 공통영역(session 이나 application)에 저장하여 sub 에서 꺼내기</p>

	<h3>ArrayList 저장하기</h3>


	<%
	//ArrayList 생성하고 월~일 까지 저장
	ArrayList<String> day = new ArrayList<String>();
	day.add("월");
	day.add("화");
	day.add("수");
	day.add("목");
	day.add("금");
	day.add("토");
	day.add("일");

	//session 영역에 저장
	session.setAttribute("day", day);
	%>

	<h3>HashMap 저장하기</h3>

	<%
	HashMap<String, String> color = new HashMap<>();
	color.put("빨강", "red");
	color.put("파랑", "blue");
	color.put("초록", "green");
	color.put("노랑", "yellow");
	color.put("검정", "black");

	session.setAttribute("color", color);
	%>

	<h3>DTO 저장하기</h3>

	<%
	//1.DTO(자바빈즈)설계하기
	//기본(default)패키지면 안됌
	//기본 생성자(매개변수가 하나도 없는 생성자) 여야함
	//get/set 다 있어야함
	Item item1 = new Item("슈미의 동전", 10);
	Item item2 = new Item("리본돼지의리본", 5);
	Item item3 = new Item("냄비뚜껑", 100000);
	
	
	
	
	session.setAttribute("item1", item1);
	session.setAttribute("item2", item2);
	session.setAttribute("item3", item3);
	%>

	<button onclick="location.href='sub.jsp'">두 번째 페이지로</button>


</body>
</html>