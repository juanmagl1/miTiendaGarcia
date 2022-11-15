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
	try {
		CategoriaDao cat=new CategoriaDao();
		Categoria c=cat.findCategoria(idCat);
		//Tengo puesto si es nulo name y desc porque los numericos se ponen a 0
		if (name==null||description==null ){
			out.write("Error no puedes meter elementos nulos");
		}else {
			Elementos n=new Elementos(id,name,description,price,c);
			ElementoDao d=new ElementoDao();
			if (d.findElement(id)==null){
				boolean add=d.addElemento(n);
				if (add){
					out.print("Elemento añadido con éxito");
				}else {
					out.print("No se pudo añadir el producto");
				}
			}else {
				out.write("Error no se puede añadir el elemento porque ya existe uno con ese id");
			}
			
		}
	}catch (Exception e){
		out.write("Hay un problema con la base de datos");
	}
	
	%>
	<a href="login">Volver</a>
</body>
</html>