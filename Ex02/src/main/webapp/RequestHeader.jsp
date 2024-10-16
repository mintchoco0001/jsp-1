<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.*"; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	//헤더정보는 하두개가 아니다!
	//그런데 Map구조로 저자되어 있어서 Key :Value 형태이다
	//그러면 헤더정보 중에서 원하는 값을 알고 싶으면 key 값을 알고 있어야한다

	out.println(request.getHeader("host"));
	//"host" 라는 키값을 가진 정보가 출력!

	//그러면 Map 구조에 저장되어있는 모든 정보를 출력해야 한다면?
	//방법이 없을까?
	//List 형태라면? for(조건문) 으로 가능하지만 Map은 순서가 없어서 반복문 불가능
	//모든 값을 찾고 싶을땐 Enumeration 이라는 객체의 도움을 받아야 함

	//1. 모든 Key 값을 찾을 때 Enumeration 으로 가져와 저장
	Enumeration keyName = request.getHeaderNames();

	//2. Enu 에 다음 데이터가 있는동안
	while (keyName.hasMoreElements()) {
		String name = (String) keyName.nextElement();//return 타입은 object	
		out.println("Key값 (헤더명)" + name);
		out.println("<br>");
		out.println("Value값" + request.getHeader(name));
		out.println("<br>");
	}
	%>

</body>
</html>