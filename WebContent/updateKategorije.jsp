<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String id = (String)request.getAttribute("id");
String naziv = (String)request.getAttribute("naziv");

%>
<form action="/CetvrtiProjekatSesije/akcija/updateKategorije"method="post">
<input type="text" name="naziv" value="<%=naziv %>">
<input type="hidden" name="id" value="<%= id%>">
<input type="submit" value="Update">

</form>>
</body>
</html>