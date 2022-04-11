<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>First JSP App</title>
</head>
<body>	
	<jsp:include page="letsHead.html"></jsp:include>
<h3>Hello from the first web application.</h3>
	The time is <%= new java.util.Date() %>
</body>
</html>