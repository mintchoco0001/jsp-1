<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Cookie[] cookies = request.getCookies();
	String loginID = "";
	if (cookies != null) {
		for (int i = 0; i < cookies.length; i++) { // 0번 쿠키부터 하나씩 꺼내보면서
			if (cookies[i].getName().equals("loginID")) { // name이 "loginID"라면
		loginID = cookies[i].getValue(); //변수에 값을 저장한다
			}
		}
	}
	%>


	<h1>로그인 페이지</h1>
	<form action="LoginSave.jsp" method="post">
		<input type="text" name="id" placeholder="아이디를 입력하세요"
			value="<%=loginID%>"> <br> <input type="password"
			name="pw" placeholder="비밀번호를 입력하세요"> <br> <input
			type="checkbox" name="saveid" value="Y"> 아이디 저장 <input
			type="submit" value="로그인"> <br>
	</form>
	<%
	String err = request.getParameter("err");
	if (err != null) {
		if (err.equals("1")) {
			out.print("로그인 실패. 아이디, 패스워드를 확인하세요.");
		}
	}
	%>






</body>
</html>