<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
<h1>forEach 연습</h1>
<form action="jstlEx19View.jsp">
	<label for="">바나나<input type="checkbox" name="food" value="banana" /></label>
	<label for="">물<input type="checkbox" name="food" value="water" /></label>
	<label for="">딸기<input type="checkbox" name="food" value="berry" /></label>
	<label for="">커피<input type="checkbox" name="food" value="coffee" /></label>
	<label for="">캔디<input type="checkbox" name="food" value="candy" /></label>
	<input type="submit" value="담기" />
</form>
</body>
</html>