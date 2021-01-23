<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Logovanje</h2>
<form action="ServletLOgin" method="post">
	<input type="text" name ="user" placeholder ="unesite vas unsername">&nbsp;
	<input type="password" name ="pass" placeholder ="unesite vas password">
	<input type="submit" name="submit" value="Login">
</form>
<br><br>
<% String msg = (String)request.getAttribute("msg"); 
if(msg != null){
%>
	<p><%= msg %></p>
<%} %>
<h2>Registracija</h2>
<form action="ServletLOgin" method="post">
	<input type="text" name ="user1" placeholder ="unesite vas unsername" required><br><br>
	<input type="text" name ="ime" placeholder ="unesite vas unesite ime" required><br><br>
	<input type="text" name ="prezime" placeholder ="unesite vas  unesite prezime" required><br><br>

	<input type="password" name ="pass1" placeholder ="unesite vas password" required><br><br>
	<input type="password" name ="pass2" placeholder ="unesite vas password" required><br><br>
	<input type="submit" name="submit" value="Registracija">
</form>
</body>
</html>