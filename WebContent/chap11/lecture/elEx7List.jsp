<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
List<String> list = new ArrayList<>();
list.add("java");
list.add("css");
list.add("html");
list.add("jsp");
list.add("dbms");
list.add("spring");
list.add("servlet");

pageContext.setAttribute("alist", list);
%>
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
${alist[0] }<br>
<hr>
<!-- 변수로 탐색해서 출력 -->
<%
for(int i = 0; i<list.size(); i++){
	pageContext.setAttribute("cnt", i); /* i가 자바 변수에만 선언되어 있어서 alist[i] 넣고 사용할 수 없음. 
	                                       페이지 영역에 i를 추가 해줘서 사용 */
%>
	${alist[cnt] }
	<%	
}
%>


</body>
</html>