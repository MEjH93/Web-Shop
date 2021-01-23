<%@page import="domen.Kategorije"%>
<%@page import="java.util.List"%>
<%@page import="dao.impl.DaoKategroijeImpl"%>
<%@page import="dao.impl.DaoVratiKlijentImpl"%>
<%@page import="dao.DaoKategorije"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="redirekcija.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% DaoKategorije dk = new DaoKategroijeImpl();
List<Kategorije>list = dk.vratiKategorije();

%>>
<form action="/CetvrtiProjekatSesije/akcija/insertKategoije" method="post">
	<table>
		<tr>
			<td>Kategorije <input type="text" name="txt_kategorija"></td>
		
		</tr>
		<tr>
			<td><input type="submit" value="Insert"></td>
		
		</tr>
	<% if(list != null){
		for(Kategorije k : list){ %>
		<tr>
			<td><label><%=k.getNaziv() %>></label></td>
			<td><a href="/CetvrtiProjekatSesije/akcija/updateKategorije?id=<%=k.getId()%>&naziv=<%=k.getNaziv() %>">Update</a></td>
			<td><a href="/CetvrtiProjekatSesije/akcija/deleteKategorije?id=<%=k.getId()%>">Delete</a></td>
		
		</tr>
	<% 
	}
}
	
	%>
	</table>



</form>
</body>
</html>