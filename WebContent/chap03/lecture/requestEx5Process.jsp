<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
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
<div class="container">
<form action="requestEx5Form.jsp">
*** <%= request.getParameter("st") %>단 *** <br>
<%
	String st = request.getParameter("st");
	int d = Integer.valueOf(st);
	for(int i = 1; i<=9; i++) {
%>
	<%= d %> X <%= i %> = <%= d*i %> <br>
<%	
      }	
%>
<input type="submit" value=" ← BACK " class="btn btn-info" />
</form>
</div>
</body>
</html>