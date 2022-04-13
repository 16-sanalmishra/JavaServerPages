<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="todoExample.jsp">

		Hiii add your workload... <br />
		<br /> <input type="text" name="item"> <input type="submit"
			value="Submit">

	</form>

	<%
	List<String> listItems = (List<String>) session.getAttribute("toDoList");
	if (listItems == null) {
		listItems = new ArrayList<String>();
		session.setAttribute("toDoList", listItems);
	}
	String item = request.getParameter("item");
	boolean isNotEmpty = item != null && item.trim().length() > 0;
	boolean noDuplicate = isNotEmpty && !listItems.contains(item.trim());
	if (isNotEmpty && noDuplicate) {
		listItems.add(item);
	}
	%>
	<hr>
	<b>The Work To-Do is</b>
	<br />
	<br />
	<ol>
		<%
		for (String s : listItems) {
			out.println("<li>" + s + "</li>");
		}
		%>

	</ol>



</body>
</html>