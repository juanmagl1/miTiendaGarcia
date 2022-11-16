<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.jacaranda.accesoDatos.*" %>
<%@page import="com.jacaranda.logica.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/add.css">
<title>Actualizado</title>
</head>
<body>
	<%
		
		if (request.getParameter("id")==null||request.getParameter("name")==null||request.getParameter("price")==null||request.getParameter("lista")==null){
			out.write("Error no puedes meter elementos nulos");
		}else {
			int id=Integer.parseInt(request.getParameter("id"));
			String name=request.getParameter("name");
			double price=Double.parseDouble(request.getParameter("price"));
			int idCat=Integer.parseInt(request.getParameter("lista"));
			String description=request.getParameter("description");
				Categoria c=CategoriaDao.findCategoria(idCat);
			if (ElementoDao.findElement(id)==null){
				Elementos n=new Elementos(id,name,description,price,c);
				boolean add=ElementoDao.addElemento(n);
				out.print("Elemento añadido con éxito");
			}else {
				out.write("No se puede añadir un elemento con ese id");
			}
			
				
			}
			
		HttpSession sesion=request.getSession();
		String user=(String)sesion.getAttribute("user");
	
	%>
	<form action="login" method="POST">
	<input type="text" value="<%=user%>" hidden="">
	<input type="submit" value="volver">
	</form>
</body>
</html>