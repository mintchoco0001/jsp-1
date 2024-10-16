<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%!
    String str1 = "JSP";
    String str2 = "안녕하세요...";
    
    public int addnumber(int a, int b){
    	return a+b;
    }
     %><!--선언부-->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>처음 만들어보는 <%= addnumber(2,5) %><!--표현식--></h2>
	<%
	System.out.print("이건 개발자만 보이는 메세지");
	
	%><!--스크립틀릿-->
	
	<p>
		<%
		out.print(str2+str1+"입니다. 열공합시다^^*");
		%>
	</p>
</body>
</html>