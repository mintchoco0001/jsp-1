<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%!String str1 = "JSP";
	String str2 = "�ȳ��ϼ���";%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	// ��ũ��Ʋ�� ��� �˰��� �ۼ�
	for (int i = 0; i < 10; i++) {
		out.print(i); //HTML ������ ���
	}
	//����� H1 �±׷� �ۼ�
	out.print( "<h1>"+234+"</h1>");
	%>
	
	<!-- HTML �ּ� -->
	<!-- ���� ũ�� ���°� -->
	<h1>Hello World!
	<%=
	out.print(str2)
	%>
	</h1>
	<h2>���� Ŀ������ �۾���</h2>
	<p>
		���� �ܶ� ���� <span>Ư���κи� �±� ���α�</span>
	</p>
	<a href="#">��ũ�ɱ�</a>




</body>
</html>