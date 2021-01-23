<%@page import="domen.Kategorije"%>
<%@page import="java.util.List"%>
<%@page import="dao.DaoKategorije"%>
<%@page import="dao.impl.DaoKategroijeImpl"%>
<%@page import="dao.DaoKategorijaDelete"%>
<%@ include file="redirekcija.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function findIdCombo() {
	var id = document.getElementById("kategorijeComobox");
	var idKategorije = id.options[id.selectedIndex].value;
	document.getElementById("id").value += idKategorije;
	console.log(idKategorije);
	
}

</script>
</head>
<body>
<% DaoKategorije dk = new DaoKategroijeImpl();
List<Kategorije>list = dk.vratiKategorije();
%>
<form action="ServletArtikal " method="post" enctype="multipart/form-data">
<input type="hidden" id ="id" name="id" >
<select id ="kategorijeComobox" name="kategorije" onchange="findIdCombo()">
<% for(Kategorije k : list){ %>
	<option value="<%=k.getId() %>"><%=k.getNaziv() %></option>
	<%} %>
</select>
<br><br>
<input type="text" name="naziv" placeholder = "unesite naziv">
<input type="text" name="cena" placeholder = "unesite cenu">
<input type="file" name="file">
<input type="submit" value="Upisi">
</form>


</body>
</html>