<%@page import="java.net.CookieStore"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<h3>Training Portal</h3>
	
	<%
		String favLanguage = "JAVA";
		Cookie[] c = request.getCookies();
		if(c != null){
			for(Cookie co : c){
				if(co.getName().equals("firstCookie")){
				favLanguage = co.getValue();
			}
		}
	}
	
%>
<h2>Your Favourite Language Is :<%= favLanguage %></h2>
<br /><br />
<a href="optionsPage.html">Click To update Details</a>
	
</body>
</html>