<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	Hiiii ${param.fname} ${param.lname} Choose your favourite language :
	<form action="favLanguage.jsp">
		<select name= "favL">
			<option>Java</option>
			<option>Python</option>
			<option>C#</option>
			<option>Pearl</option>
			<option>Ruby</option>
		</select>
		<br /><br />
		<input type="submit" value="submit" />

	</form>

</body>
</html>