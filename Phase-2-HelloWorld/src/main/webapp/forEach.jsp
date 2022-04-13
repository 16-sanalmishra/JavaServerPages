<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%
 	int [] n = {2,3,4,5,6,6,7,8,9};
 	pageContext.setAttribute("num", n);
 
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="a" items="${num}">
		${a}
	
	</c:forEach>


</body>
</html>