<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String area = request.getParameter("area");
	String[] food = request.getParameterValues("food");

	//�迭�� ����� ���� ���ڿ��� �Ľ�(Parsing)
	String str = "";
	for (int i = 0; i < food.length; i++) {
		str += food[i] + " ";
	}
	%>

	<ul>
		<li>�̸� : <%= name %></li>
		<li>��� �� : <%= area %> </li>
		<li>�����ϴ� ���� : <%= str %> </li>
	</ul>

</body>
</html>