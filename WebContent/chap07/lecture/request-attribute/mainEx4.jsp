<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="chap07.User" %>
 <%
 List<User> userList = new ArrayList<>();
 
 request.setAttribute("users", userList);
 userList.add(new User("ironman", "ny", 50));
 userList.add(new User("cap", "seoul", 40));
 userList.add(new User("spider", "la", 30));
 userList.add(new User("hulk", "asgard", 22));
 userList.add(new User("panther", "busan", 11));
 
 %>
 
 <jsp:forward page="subEx4.jsp"></jsp:forward>