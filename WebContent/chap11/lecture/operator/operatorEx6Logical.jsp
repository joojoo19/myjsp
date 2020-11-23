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
<h1>AND</h1>

${true && true }<br>
${true && false }<br>
${false && true }<br>
${false && true }<br>
<hr>
${true and true }<br>
${true and false }<br>
${false and true }<br>
${false and true }<br>
<hr>
<h1>OR</h1>
${true || true }<br>
${true || false }<br>
${false || true }<br>
${false || true }<br>
<hr>
${true or true }<br>
${true or false }<br>
${false or true }<br>
${false or true }<br>
<hr />
<h3>not</h3>
${! true } <br />
${! false } <br />
<hr />
${not false } <br />
${not true } <br />
</body>
</html>