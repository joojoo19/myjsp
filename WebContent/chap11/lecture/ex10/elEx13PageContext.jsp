<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
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
<%= pageContext %><br> <!-- bean은 아니지만 get.. get...으로 결정됨 프로퍼티가 있어서 bean처럼 get을 빼고 쓸 수 있음 -->
${pageContext.request }<br>
${pageContext.session }<br>
${pageContext.servletContext }<br>
${pageContext.servletConfig }<br>
<hr>
<%= request.getContextPath() %><br>
${pageContext.request.contextPath }<br>
${pageContext.request.cookies[0].name }<br>
${pageContext.request.cookies[0].value }<br>
<hr>
${pageContext.request }<br>
<%= pageContext.getRequest() %>
</body>
</html>