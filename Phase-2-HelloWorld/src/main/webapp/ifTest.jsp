<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	boolean n = true;
	pageContext.setAttribute("data", n);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<c:if test="${data}">
		Hurray
	</c:if>
	<c:if test="${not data}">
		not Hurray
	</c:if>

</body>
</html>