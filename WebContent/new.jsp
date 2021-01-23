<%@page import="domen.Artikal"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
List<Integer>list = new ArrayList<>();
list.add(1);
list.add(2);
list.add(3);


%>
<form action="" method="post">
<input type="hidden" id="idartikla"name ="idartikla">
<input type="hidden" id= "kolicina" name ="kolicina">
<%for(Integer i: list){%>
<input type="text" id ="naziv+<%=i %>">
<input type="submit" value="Posalji" onclick="poziv('naziv+<%=i%>')">
<%} %>

</form>
<script>

	function poziv(vrednost) {
		var id = vrednost.substring(6,7);
		var kolicina = document.getElementById(vrednost).value;
		document.getElementById("idartikla").value=id;
		document.getElementById("kolicina").value=kolicina;
		alert(kolicina);
		alert(id);
		}
</script>
</body>
</html>