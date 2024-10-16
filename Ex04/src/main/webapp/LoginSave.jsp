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
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String idr = request.getParameter("saveid");
	String[] ok = request.getParameterValues("saveid");

	out.print("아이디 : " + id + "<br>");
	out.print("비밀번호 : " + pw + "<br>");
	out.print("아이디저장 : " + idr + "<br>");

	if (id.equals("dleldh") && pw.equals("1234")) {
		out.print("로그인 성공");
		if (ok != null) {
			Cookie cookie = new Cookie("loginID", id);
			cookie.setPath(request.getContextPath());
			cookie.setMaxAge(6000);
			response.addCookie(cookie);
		} else {
			//쿠키삭제 방법
			//지우고 싶은 쿠키 이름으로 생성 (같은 이름으로 넣으면 갱신되면서 덮어씌어지는것을 이용)
			//갱신할때 Maxage 값을 0으로 줘서 생성하자마자 사라지게 만듦!
			Cookie cookie = new Cookie("loginID", "");
			cookie.setPath(request.getContextPath());
			cookie.setMaxAge(0);
			response.addCookie(cookie);
		}
	} else {

		request.getRequestDispatcher("LoginMain.jsp?err=1").forward(request, response);

	}
	%>
</body>
</html>