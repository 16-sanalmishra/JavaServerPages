<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expression</title>
</head>
<body>
	Convert : <%= new String("Hello Sanal").toUpperCase() %>
	<br></br>
	Multiply 7*3 : <%= 7*3 %>
	<br>
	<jsp:include page="newExample.jsp"></jsp:include>
</body>
</html>