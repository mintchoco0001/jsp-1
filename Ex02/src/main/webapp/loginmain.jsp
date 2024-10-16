<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1> <%= application.getInitParameter("Master") %> 네 홈페이지 입니다</h1>
	<h1>로그인 페이지</h1>

	<!-- 전송 양식 작성하기
		from, input, submit 
		from 으로 요소 감싸기-->
	<form action="loginpro.jsp" method="post">
		<!-- 값을 처리하는 서버에서는 name 속성값으로 꺼낸다! -->
		<input type="text" placeholder="아이디" name="U_ID"> <br> <input
			type="password" placeholder="비밀번호" name="U_PW"> <br> <input
			type="submit" value="로그인"> <br>
	</form>

	<%
	String err = request.getParameter("err");
	if (err != null) {
		if(err.equals("1")){
			out.print("아이디 오류.");
		}
		if(err.equals("2")){
			out.print("비밀번호 오류");
		}
		

	}
	%>
</body>
</html>