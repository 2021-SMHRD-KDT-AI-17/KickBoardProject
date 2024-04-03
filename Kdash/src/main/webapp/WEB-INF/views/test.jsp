<%@page import="org.springframework.security.core.Authentication"%>
<%@page import="com.kickboard.Kdash.config.auth.CustomUserDetails"%>
<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="java.security.Principal"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authentication var="user" property="principal"/>
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
	Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	CustomUserDetails userDetails = (CustomUserDetails) authentication.getPrincipal();
	String useremail = authentication.getName();
	%>
	<%= useremail %>
	<%= authentication.getPrincipal() %>
	<%= authentication.getDetails() %>
	<%= userDetails.getMem_point() %>

</body>
</html>