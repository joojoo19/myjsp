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
<%
java.util.Set<Integer> lotto = new java.util.HashSet<>();

while(lotto.size() <6 ) {
	int rand = (int) (Math.random() *45+1);
	lotto.add(rand);
}
%>
<ul>
<% for(int ran : lotto) { %>
<li>
<%= ran %>
</li>
<%} %>
</ul>

<hr>
<%
for(int i : lotto) {
	out.print("<li>" +i+"</li>");
}
%>


</body>
</html>