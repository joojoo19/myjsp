<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String mEno = request.getParameter("eno");
String sql = "SELECT e1.ename, e2.ename, e1.eno FROM employee e1, employee e2 "
             + "WHERE e1.manager = e2.eno AND e2.eno = ?";

Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";
String mname = "";
String eno = "";

Connection con = DriverManager.getConnection(url, id, pw);
PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setInt(1, Integer.valueOf(mEno));

ResultSet rs = pstmt.executeQuery();
List<String> list = new ArrayList<>();
while(rs.next()) {
	list.add(rs.getString(3)+" "+rs.getString(1));
	mname = rs.getString(2);

}


pstmt.close();
con.close();
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
<h1><%= mname %>의 관리 직원 List</h1>
<%
if(list.size() >0) {
%>
<ul>
<%
for(String n : list) {
%>
<li><%= n %></li>
<%  } %>
</ul>
<%
} %>

</body>
</html>