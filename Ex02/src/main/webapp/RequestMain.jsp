<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>내장객체 request</title>
</head>
<body>
	<h1>1. 클라이언트 환경정보 읽기</h1>
	<a href="RequestWebInfo.jsp">페이지 이동</a>
	<h1>2. 서버에 값 전달</h1>

	<a href="RequestWebInfo.jsp?msg=hello&name=이건가">서버에 값 전달 (get방식)</a>
	<p>post 방식 (form 태그 필요!)</p>
	<form action="RequestWebInfo.jsp">
		<input type="text" name="msg"> <br> <input type="text"
			name="name"> <br> <input type="submit" value="전송하기">
	</form>

	<h1>3. 다양한 형태의 input값 전달</h1>

	<!-- form 태그 추가하기 RequestParam.jsp로, post 방식으로
	이름, radio버튼 => 사는 구, 체크박스 => 일식, 중식, 한식, 양식 중복선택 가능
	submit 추가 -->


	<form action="RequestParam.jsp" method="post">
		<label>이름<input type="text" name="name"></label> <br> <label>
			사는 곳</label> <br> <label>북구<input type="radio" name="area"
			value="북구"></label> <label>동구<input type="radio" name="area"
			value="동구"></label> <label>서구<input type="radio" name="area"
			value="서구"></label> <label>남구<input type="radio" name="area"
			value="남구"></label> <label>광산구<input type="radio" name="area"
			value="광산구"></label> <label>그 외<input type="radio"
			name="area" value="그 외"> <textarea rows="1" cols="10"></textarea></label>
		<br> <label>좋아하는 음식 (중복선택 가능) </label><br> <label>한식<input
			type="checkbox" name="food" value="한식"></label> <label>중식<input
			type="checkbox" name="food" value="중식">
		</label> <label>일식<input type="checkbox" name="food" value="일식"></label>
		<label>양식<input type="checkbox" name="food" value="양식">
		</label> <input type="submit">
	</form>

	<h1>4. HTTP 요청 헤더정보 읽기</h1>
	<a href="RequestHeader.jsp">헤더정보 알아보기</a>

</body>
</html>