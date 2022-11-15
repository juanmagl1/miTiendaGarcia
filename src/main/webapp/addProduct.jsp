<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.jacaranda.accesoDatos.*"%>
<%@page import="com.jacaranda.logica.*"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Productos</title>
</head>
<body>

	<%
	ElementoDao n = new ElementoDao();
	List<Elementos> list = n.devuelveConjunto();
	CategoriaDao c=new CategoriaDao();
	List<Categoria> lista = c.devuelveCategoria();
	%>
	<form action="execAddProduct.jsp" method="post">
	<label>Id:</label>
	<br>
	<input type="number" id="id" name="id">
	<br>
	<label>Nombre:</label>
	<br>
	<input type="text" id="name" name="name" required>
	<br>
	<label>Descripcion:</label>
	<br>
	<input type="text" id="description" name="description" maxlength="42" required>
	<br>
	<label>Price:</label>
	<br>
	<input type="number" id="price" name="price" step="any" required>
	<br>
	<label>Categoria:</label>
	<br>
	<select id="lista" name="lista">
	<%for (Categoria item:lista){ %>
	<option value="<%=item.getId()%>"><%=item.getName()%></option>
	<%} %>
	</select>
	<input type="submit" id="butt">
	</form>
	
</body>
</html>