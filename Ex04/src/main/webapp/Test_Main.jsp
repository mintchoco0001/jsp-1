<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>여기는 Main.jsp 페이지</h1>
	<p>input 테그로 입력받기</p>
	<p>input 테그 사용할때 form 테그로 감싸준다</p>
	<p>form 테그의 action 테그에세는 값을 보내줄 jsp 이름 적는다. method 속성에는 정송방식
		(get/post) 적는다</p>
	<form action="Test_Save.jsp" method="get">
		<input type="text" name="key" value="" placeholder="쿠키이름 입력">
		<!-- name 은 테그의 이름 value 는 테그안에 적힐 값 -->
		<input type="text" name="msg" value="" placeholder="쿠키내용 입력">
		<br> <br> <input type="submit" value="전송하기">
	</form>
	
	<!-- 쿠키값 확인 -->
	<%
	//모든 쿠키 가져오기
	Cookie[] cookies = request.getCookies();
	
	for(int i=0; i < cookies.length; i++) {
		out.println(i + 1 + "번째");
		out.println("쿠키 이름 : " + cookies[i].getName());
		out.println("쿠키 내용 : " + cookies[i].getValue() + "<br>");
	}
	%>
	
</body>
</html>