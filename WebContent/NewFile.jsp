<%@page import="domen.Artikal"%>
<%@page import="java.util.List"%>
<%@page import="dao.impl.DaoProductAll"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
DaoProductAll dp= new DaoProductAll();
List<Artikal>list = dp.list();
%>
<form action="ServletKorpa" method="post">
<%for(Artikal a:list){ %>
<input type="hidden" name="id" value="<%=a.getIdArtikla() %>">
<input type="text" name="<%=a.getIdArtikla() %>">
<input type="submit" name="Posalji">
<%} %>
</form>
</body>
</html>