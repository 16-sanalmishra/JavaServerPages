<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	The student registration is confirmed: FirstName<%=request.getParameter("firstName")%>
	LastName <%=request.getParameter("lastName")%>
	!!
	<br />
	<br /> Welcome - ${param.lastName}, ${param.firstName} !! Your
	favourite programming language:
	<%=request.getParameter("favouriteLanguage")%>

	<%
	String[] langs = request.getParameterValues("favouriteLanguage");
	if (langs != null) {
		out.println("Your favourte programming language: ");
		out.println("<ul>");
		for (String lang : langs) {
			out.println("<li>" + lang + "</li>");
		}
		out.println("</ul>");
	}
	%>
</body>
</html>