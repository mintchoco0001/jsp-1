<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>요청한 클라이언트 환경정보</h1>
	<ul>
		<li>요청받은 서버의 URL :
		<%=request.getRequestURL()%></li>
		<p>URL은 호스트정보 (프로토콜, ip, 포트번호)까지 출력</p>
		<li>요청한 클라이언트 IP :
		<%=request.getRemoteAddr() %></li>
		<p>URI는 호스트정보없이 프로젝트명부터 출력</p>
		<li>클라이언트가 보낸값(쿼리스트링)<%=request.getQueryString() %></li>
		<li>클라이언트가 보낸값(parameter)<%=request.getParameter("msg") %></li>
		<%
		request.setCharacterEncoding("UTF-8");
		String msg = request.getParameter("msg");
		String name = request.getParameter("name");
		System.out.println(name+"님 안녕하세요");
		System.out.println(msg + "라고 하셧네요");
		System.out.println();
		%>
	</ul>
</body>
</html>