<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="chap08.Car"%>
<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="car" class="chap08.Car">
	<jsp:setProperty property="name" name="car" value="kia" />
</jsp:useBean>
<jsp:useBean id="car2" class="chap08.Car">
	<jsp:setProperty property="name" name="car2" value="volvo" />
</jsp:useBean>
<%
	Car car3 = new Car();
car3.setName("benz");
request.setAttribute("car", car3);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
<h3>${car }</h3>	 <!-- 각 영역의 "car" attriubute를 찾음 -->
	        <!-- 찾는 순서 : page, request, session, application -->
	<br><h3> car : ${car }, ${car.name } </h3>
	<br><h3> car2 : ${car }, ${car2.name } </h3>
	<br><h3> car3 : ${car }, ${car3.name } </h3>
</body>
</html>