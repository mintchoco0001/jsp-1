<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.*"; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	//��������� �ϵΰ��� �ƴϴ�!
	//�׷��� Map������ ���ڵǾ� �־ Key :Value �����̴�
	//�׷��� ������� �߿��� ���ϴ� ���� �˰� ������ key ���� �˰� �־���Ѵ�

	out.println(request.getHeader("host"));
	//"host" ��� Ű���� ���� ������ ���!

	//�׷��� Map ������ ����Ǿ��ִ� ��� ������ ����ؾ� �Ѵٸ�?
	//����� ������?
	//List ���¶��? for(���ǹ�) ���� ���������� Map�� ������ ��� �ݺ��� �Ұ���
	//��� ���� ã�� ������ Enumeration �̶�� ��ü�� ������ �޾ƾ� ��

	//1. ��� Key ���� ã�� �� Enumeration ���� ������ ����
	Enumeration keyName = request.getHeaderNames();

	//2. Enu �� ���� �����Ͱ� �ִµ���
	while (keyName.hasMoreElements()) {
		String name = (String) keyName.nextElement();//return Ÿ���� object	
		out.println("Key�� (�����)" + name);
		out.println("<br>");
		out.println("Value��" + request.getHeader(name));
		out.println("<br>");
	}
	%>

</body>
</html>