<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.jacaranda.accesoDatos.*" %>
<%@page import="com.jacaranda.logica.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%int id=Integer.parseInt(request.getParameter("id"));
	String name=request.getParameter("name");
	double price=Double.parseDouble(request.getParameter("price"));
	int idCat=Integer.parseInt(request.getParameter("lista"));
	String description=request.getParameter("description");
	CategoriaDao cat=new CategoriaDao();
	Categoria c=cat.findCategoria(idCat);
	Elementos n=new Elementos(id,name,description,price,c);
	ElementoDao d=new ElementoDao();
	boolean add=d.addElemento(n);
	if (add){
		out.print("Elemento añadido con éxito");
	}else {
		out.print("No se pudo añadir el producto");
	}
	%>
	<button><a href="login" method="POST">Volver</a></button>
</body>
</html>