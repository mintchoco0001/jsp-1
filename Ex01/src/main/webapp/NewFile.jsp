<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%!
    String str1 = "JSP";
    String str2 = "�ȳ��ϼ���...";
    
    public int addnumber(int a, int b){
    	return a+b;
    }
     %><!--�����-->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>ó�� ������ <%= addnumber(2,5) %><!--ǥ����--></h2>
	<%
	System.out.print("�̰� �����ڸ� ���̴� �޼���");
	
	%><!--��ũ��Ʋ��-->
	
	<p>
		<%
		out.print(str2+str1+"�Դϴ�. �����սô�^^*");
		%>
	</p>
</body>
</html>