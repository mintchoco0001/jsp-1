<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Save.jsp 페이지</h1>

	<%
	request.setCharacterEncoding("UTF-8");
	//Main.jsp 에서 보내준 값 꺼내보기
	String key = request.getParameter("key");
	String msg = request.getParameter("msg");
	//출력하기
	//1.여기는 HTML 문서에 출력 (웹브라우저에 출력함) -> 사용자에게 보여줌
	out.print("HTML : " + key + ", " + msg);
	//2.여기는 개발자 콘솔에만 출력
	System.out.print("console : " + key + ", " + msg);

	//Main에서 보내준 값으로 쿠키 생성!
	Cookie cookie = new Cookie(key, msg);
	//경로설정
	cookie.setPath(request.getContextPath());
	//유지시간설정
	cookie.setMaxAge(6000);
	//쿠키저장
	response.addCookie(cookie);
	%>
	<!-- 표현식 <HTML 태그에서 jsp 변수값, 메소드 리턴값 출력> -->
	<h3>key 변수에 저장된 값 key</h3>
	<h3>
		key 변수에 저장된 값
		<%=key%></h3>

	<p>페이지이동하는 방법</p>
	<p>1.a태그 사용하기 (사용자가 클릭하면 이동하게 된다)</p>
	<a href="Test_Main.jsp">Main으로 이동! (Main.jsp 페이지 새롭게 요청)</a>

	<p>2. button 사용하기 (사용자가 클릭하면)</p>	
	<button onclick="location.href='Test_Main.jsp'">Main으로 이동!</button>
	<%-- 	
	<p>3. 개발자가 보내버리기</p>
	<%
		response.sendRedirect("Test_Main.jsp");
	%>

	<p>4. 요청한 정보 그대로 들고 전닭</p>
	<%
	request.getRequestDispatcher("Test_Main.jsp").forward(request, response);
	%>
	 --%>

</body>
</html>