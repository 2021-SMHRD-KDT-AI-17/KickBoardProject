<%@page import="com.kickboard.Kdash.config.auth.CustomUserDetails"%>
<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="java.security.Principal"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Test</h1>
	<% 
	Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal(); 
	CustomUserDetails userDetails = (CustomUserDetails)principal; 
	String username = principal.toString();
	%>
	<%= username %>
</body>
</html>