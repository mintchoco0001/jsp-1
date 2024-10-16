<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- 1. loginmain.jsp 에서 submit 태그로 전달한 값 그대로 출력하기
	 2. ID가 "dnjfdydlf" 이고 PW가 "1818" 이면 로그인 성공! 이라고 console 에 출력하기 -->
	<%
	String ID = request.getParameter("U_ID");
	String PW = request.getParameter("U_PW");
	//이건 콘솔로 출력
	System.out.print(ID + " , " + PW);

	if (ID.equals("dnjfdydlf")) {
		if (PW.equals("1818")) {
			response.sendRedirect("loginok.jsp");
		} else {
			request.getRequestDispatcher("loginmain.jsp?err=2").forward(request, response);
			
		}
	} else {
		//나를 요청한 페이지로 다시 돌아가는, 내가 들고온 요청을 들고 돌아감
		request.getRequestDispatcher("loginmain.jsp?err=1").forward(request, response);
	}
	%>
</body>
</html>