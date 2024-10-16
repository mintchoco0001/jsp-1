<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>포켓몬 대전!! Lv1</h1>
	<a href="poketmonLv1.jsp?value=피카츄">포켓볼A!</a>
	<br>
	<a href="poketmonLv1.jsp?value=라이츄">포켓볼B!</a>
	<br>
	<a href="poketmonLv1.jsp?value=파이리">포켓볼C!</a>
	<br>
	<a href="poketmonLv1.jsp?value=꼬북이">포켓볼D!</a>
	<br>
	<h1>포켓몬 대전!! Lv2</h1>
	<form action="poketmonLv2.jsp">
		<input type="text" name="poketmon" placeholder="포켓몬 이름을 입력하세요">
		<input type="submit" value="소환!!">
	</form>
	<h1>포켓몬 대전!! Lv3</h1>
	<form action="poketmonLv3.jsp">
		<label>피카츄 <input type="checkbox" name="poketmon" value="피카츄">
		</label> <label>라이츄 <input type="checkbox" name="poketmon" value="라이츄">
		</label> <label>파이리 <input type="checkbox" name="poketmon" value="파이리">
		</label> <label>꼬북이 <input type="checkbox" name="poketmon" value="꼬북이">
		</label> <input type="submit" value="소환!!">
	</form>
	<h1>포켓몬 대전!! Lv4</h1>
	<form action="poketmonLv4pro.jsp">
		<input type="text" name="poketmon" placeholder="포켓몬 이름을 입력하세요">
		<input type="submit" value="소환!">
	</form>

	<%
	String err = request.getParameter("err");
	if (err != null) {
		if(err.equals("1")){
			out.print("지우야 그런 포켓몬은 없어.... 가서 잡아와");
		}
	}
	%>



</body>
</html>