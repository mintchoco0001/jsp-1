<%@page import="java.net.URL"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.HashSet"%>
<%@ page import="java.net.URLEncoder"%>
<!-- sendRedirect로 get방식 전송할때 한글 인코딩! -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	/* 	//자료구조중에 중복을 허용하지 않는 Set
		HashSet<String> pockets = new HashSet<>();
		pockets.add("피카츄");
		pockets.add("라이츄");
		pockets.add("파이리");
		pockets.add("꼬북이");
		//result로 넘어갈 조건? 피카츄, 라이츄, 파이리, 꼬북이 중에 하나 선택
		String pock = request.getParameter("poketmon"); //Main.jsp 에서 넘오온 값
		if(pockets.contains(pock)){
			pock =URLEncoder.encode(pock, "UTF-8");
			response.sendRedirect("poketmonLv4ok.jsp?poketmon="+pock);
			//response.sendRedirect 방식 => get 방식으로 보낼때 한글인코딩 불가
			//java.net.URLEncoder
		}else{
			request.getRequestDispatcher("poketmonmain.jsp?err=1").forward(request, response) ;
		}
		 */

	String poketmon = request.getParameter("poketmon");
	if (poketmon.equals("피카츄") || poketmon.equals("라이츄") || poketmon.equals("파이리") || poketmon.equals("꼬북이")) {
		poketmon = URLEncoder.encode(poketmon, "UTF-8");
		response.sendRedirect("poketmonLv4ok.jsp?poketmon=" + poketmon);
	} else {
		request.getRequestDispatcher("poketmonmain.jsp?err=1").forward(request, response);
	}
	%>

</body>
</html>