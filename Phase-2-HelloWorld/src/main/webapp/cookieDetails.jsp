<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	Conratulations you have successfully set your language
	<%
		String name = request.getParameter("language");
		Cookie co = new Cookie("firstCookie" , name);
		co.setMaxAge(60*60);
		response.addCookie(co);
		
	%>
	<a href="cookieExample.jsp">See The Change</a>

</body>
</html>