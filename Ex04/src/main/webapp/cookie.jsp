<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>쿠키 저장하는 방법</h1>
	<%
	//쿠키 생성
	Cookie cookie = new Cookie("makecookie", "why");

	//쿠키 설정
	cookie.setPath(request.getContextPath());
	cookie.setMaxAge(60); //1분만 유지

	//저장
	response.addCookie(cookie);
	
	//쿠키 2개 더 생성하기
	Cookie cookie2 = new Cookie("english","hard");
	cookie2.setPath(request.getContextPath());
	cookie2.setMaxAge(10);
	response.addCookie(cookie2);
	
	Cookie cookie3 = new Cookie("cantprint","Hangeal");
	cookie3.setPath(request.getContextPath());
	cookie3.setMaxAge(20);
	response.addCookie(cookie3);
	%>

	<h1>쿠키 확인하기</h1>
	<%
	//쿠키는 한개만 가져오는 방법은 없다
	//이 페이지에 저장되어있는 모든 쿠키 가져와서 찾아야 함
	Cookie[] cookies = request.getCookies();
	
	for(Cookie c : cookies){
		String name = c.getName(); // 쿠키 이름
		String value = c.getValue(); //쿠키 내용
		
		out.print(name + " : " + value + "<br>");
	}
	%>
	
	<p>쿠키는 페이지 로딩하고 저장 (응답시에 클라이언트 브라우저에 저장해줌)</p>
	<p> 그래서 처음 들어오면 쿠키값 없음. 두번째 방문시 보임!</p>
	
</body>
</html>