<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*, com.JSPDemo.Student" %> 
<%
	List<Student> stu = new ArrayList<Student>();
	stu.add(new Student("Sanal","Mishra",21));
	stu.add(new Student("Sonal","Singh",21));

	pageContext.setAttribute("data", stu);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<tr>
	<th>firstName</th>
	<th>LastName</th>
	<th>Age</th>
</tr>
	<c:forEach var="s" items="${data}">
	
			<tr>
				<td>${s.firstName}</td> 
				<td>${s.lastName}</td>
				<td>${s.age}</td>
			</tr>
	
	
	</c:forEach>


</table>
</body>
</html>