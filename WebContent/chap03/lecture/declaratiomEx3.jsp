<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%!
    java.util.Set<Integer> genLotto() {
    	java.util.Set<Integer> lotto = new java.util.HashSet<>();
    	
    	while(lotto.size() <6) {
    		lotto.add((int)(Math.random()*45+1));
    	}
    	return lotto;
    }
    %>
    
    <%!
    String colorClass(int num) {
return "lotto-color" + (num / 10)*10;
    }
    %>
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
.lotto-ball {
border :5px solid black;
border-radius: 50%;
width:100px;
height: 100px;
font-size: 30px;
font-weight: 900;
text-align: center;
line-height: 100px;
}
.lotto-color0{
color : white;
background-color: red;
}
.lotto-color10{
color : black;
background-color: green;
}
.lotto-color20{
color : white;
background-color: pink;
}
.lotto-color30{
color : white;
background-color: skyblue;
}
.lotto-color40{
color : black;
background-color: gold;
}
</style>
<title>Insert title here</title>
</head>
<body>
<% java.util.Set<Integer> lotto = genLotto(); %>
<% 
for(int num : lotto) {
%>
<div class="lotto-ball <%= colorClass(num) %>"><%= num %></div>
<%} %>
</body>
</html>