<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.jacaranda.accesoDatos.*" %>
<%@page import="com.jacaranda.logica.*" %>
<%@page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%int id=Integer.parseInt(request.getParameter("id"));
CategoriaDao c=new CategoriaDao();
Categoria ca=new Categoria();
%>
<table border="1">
	<tr>
		<th>Id</th>
		<th>Name</th>
		<th>Description</th>
		<th>Price</th>
	</tr>
	<%ca=c.findCategoria(id);
	List<Elementos> lista=ca.getElementos();
	for (Elementos i:lista){%>
		<tr>
			<td><%=i.getId()%></td>
			<td><%=i.getName()%></td>
			<td><%=i.getDescription()%></td>
			<td><%=i.getPrice()%></td>
		</tr>
	<%}
	%>
</table>
</body>
</html>