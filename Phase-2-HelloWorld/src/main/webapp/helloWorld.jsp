<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	
	<c:set var="myNewDate" value="<%= new java.util.Date() %>" />
The Date is : ${myNewDate}
</body>
</html>