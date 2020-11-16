<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String sql = "SELECT ename, salary * 12 +NVL(commission, 0) AS sal "
			 + " FROM employee WHERE eno = 7499";

String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";
String name ="";
int sal = 0;

	// 1. 클래스 로딩
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
	e.printStackTrace();
		}
	// 2. 커넥션 생성
	// 3. Statement 객체 생성
	try (
	Connection conn = DriverManager.getConnection(url, id, pw);
	Statement stmt = conn.createStatement();	){
	// 4. 쿼리 실행
	ResultSet rs = stmt.executeQuery(sql);	
	// 5. 결과 처리
	if(rs.next()) {
	name = rs.getString("ename");
	sal = rs.getInt("sal");
	} } catch (Exception e) {
		e.printStackTrace();
	}
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
<h1>
name : <%= name %>
sal : <%= sal %>
</h1>
</body>
</html>