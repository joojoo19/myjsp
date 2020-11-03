<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
</style>
<title>Insert title here</title>
</head>
<body>
<h1>Lorem ipsum dolor.</h1>

<%
String name = "java";
%>
<h1>
<%= name %></h1>

<hr />
<%
java.util.List<String> list = new java.util.ArrayList<>();


list.add("java");
list.add("jsp");
list.add("spring");
list.add("dbms");
%>
<ul>
<%
for(String item: list) {
%>
<li><%= item %></li>
<%
}%>

</ul>

<hr />
<%
String status = "info";
%>

<h1 class="text-<%= status %>">Lorem ipsum dolor.</h1>
</body>
</html>