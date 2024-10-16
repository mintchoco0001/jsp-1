<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%!String str1 = "JSP";
	String str2 = "안녕하세요";%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	// 스크립틀릿 모든 알고리즘 작성
	for (int i = 0; i < 10; i++) {
		out.print(i); //HTML 문서에 출력
	}
	//결과를 H1 태그로 작성
	out.print( "<h1>"+234+"</h1>");
	%>
	
	<!-- HTML 주석 -->
	<!-- 글자 크게 쓰는것 -->
	<h1>Hello World!
	<%=
	out.print(str2)
	%>
	</h1>
	<h2>숫자 커질수록 작아짐</h2>
	<p>
		글자 단락 쓰기 <span>특정부분만 태그 감싸기</span>
	</p>
	<a href="#">링크걸기</a>




</body>
</html>