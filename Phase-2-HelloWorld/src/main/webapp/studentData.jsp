<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*, com.JSPDemo.Student" %> 
<%
	List<Student> stu = new ArrayList<Student>();
	stu.add(new Student("Sanal","Mishra",21,false));
	stu.add(new Student("Sonal","Singh",21,true));

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
	<th>Receive Reward</th>
</tr>
	<c:forEach var="student" items="${data}">
			<tr>
				<td>${student.firstName}</td> 
				<td>${student.lastName}</td>
				<td>${student.age}</td>				
				<td>
					<c:if test="${student.receiveReward}">
						Receive Award
					</c:if>
					<c:if test="${not student.receiveReward}">
						-
					</c:if>
				</td>
			</tr>
		</c:forEach>


</table>
</body>
</html>