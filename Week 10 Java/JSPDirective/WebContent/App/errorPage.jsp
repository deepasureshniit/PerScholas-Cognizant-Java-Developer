<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page isErrorPage="true" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ERROR</title>
</head>
<body>
	
    <h1><%=exception.getMessage() %></h1><br/>  
	<h1>WARNING: YOU ARE MISSING YOUR NAME</h1>
	<h1>PLEASE ENTER YOUR NAME ON THE PREVIOUS PAGE</h1>
	<h1>THANK YOU</h1>
</body>
</html>