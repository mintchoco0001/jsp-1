<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- 1. loginmain.jsp ���� submit �±׷� ������ �� �״�� ����ϱ�
	 2. ID�� "dnjfdydlf" �̰� PW�� "1818" �̸� �α��� ����! �̶�� console �� ����ϱ� -->
	<%
	String ID = request.getParameter("U_ID");
	String PW = request.getParameter("U_PW");
	//�̰� �ַܼ� ���
	System.out.print(ID + " , " + PW);

	if (ID.equals("dnjfdydlf")) {
		if (PW.equals("1818")) {
			response.sendRedirect("loginok.jsp");
		} else {
			request.getRequestDispatcher("loginmain.jsp?err=2").forward(request, response);
			
		}
	} else {
		//���� ��û�� �������� �ٽ� ���ư���, ���� ���� ��û�� ��� ���ư�
		request.getRequestDispatcher("loginmain.jsp?err=1").forward(request, response);
	}
	%>
</body>
</html>