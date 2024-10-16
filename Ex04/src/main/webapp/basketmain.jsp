<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1> 장바구니 예제 </h1>
   
   <form action = "BasketCookie.jsp" method = "post"> 
      
      <label>  <input type = "checkbox" name = "item" value = "item1"> 냄비뚜껑 </label> <br>
      <label>  <input type = "checkbox" name = "item" value = "item2"> 빨간포션 </label>  <br>
      <label>  <input type = "checkbox" name = "item" value = "item3"> 파란포션 </label>  <br>
      <label>  <input type = "checkbox" name = "item" value = "item4"> 마을 귀환 주문서 </label> <br> 
      <label>  <input type = "checkbox" name = "item" value = "item5"> 마나 엘릭서 </label>  <br>
      <label>  <input type = "checkbox" name = "item" value = "item6"> 빨간 달팽이의 껍질 </label>  <br>
      <label>  <input type = "checkbox" name = "item" value = "item7"> 아르웬의 유리구두 </label>  <br>
      <label>  <input type = "checkbox" name = "item" value = "item8"> 슈미가 잃어버린 동전 </label>  <br><br>
   
   
      <input type = "submit" value = "담기">
   
   </form>
   
   <button onclick="location.href='BasketRemove.jsp'"> 비우기 </button>
   <button onclick="location.href='BasketShow.jsp'"> 장바구니 확인 </button>
   
</body>
</html>