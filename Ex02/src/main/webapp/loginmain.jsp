<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1> <%= application.getInitParameter("Master") %> �� Ȩ������ �Դϴ�</h1>
	<h1>�α��� ������</h1>

	<!-- ���� ��� �ۼ��ϱ�
		from, input, submit 
		from ���� ��� ���α�-->
	<form action="loginpro.jsp" method="post">
		<!-- ���� ó���ϴ� ���������� name �Ӽ������� ������! -->
		<input type="text" placeholder="���̵�" name="U_ID"> <br> <input
			type="password" placeholder="��й�ȣ" name="U_PW"> <br> <input
			type="submit" value="�α���"> <br>
	</form>

	<%
	String err = request.getParameter("err");
	if (err != null) {
		if(err.equals("1")){
			out.print("���̵� ����.");
		}
		if(err.equals("2")){
			out.print("��й�ȣ ����");
		}
		

	}
	%>
</body>
</html>