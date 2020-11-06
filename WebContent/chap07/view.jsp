<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String code = request.getParameter("code");
String viewPageURL = null;

if(code.equals("a")) {
	viewPageURL = "viewModule/a.jsp";
} else if(code.equals("b")) {
	viewPageURL = "viewModule/b.jsp";
} else if(code.equals("c")) {
	viewPageURL = "viewModule/c.jsp";
}
%>
<jsp:forward page="<%= viewPageURL %>"></jsp:forward>