<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="chap09.Cookies" %>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
Cookies cookies = new Cookies(request);


%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
</style>
<title>Insert title here</title>
</head>
<body>
mycookie 있는지 : <%=cookies.exists("mycookie") %> <br>
mycookie 의 값 : <%= cookies.getValue("mycookie") %>
</body>
</html>