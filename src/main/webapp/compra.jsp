<%@page import="com.jacaranda.accesoDatos.ElementoDao"%>
<%@page import="com.jacaranda.accesoDatos.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.jacaranda.logica.*"%>
<%@ page import="com.jacaranda.accesoDatos.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	HttpSession sesion = request.getSession();
	Carrito c = (Carrito) sesion.getAttribute("carrito");
	String user = (String) sesion.getAttribute("user");
	User u = UserDAO.findUser(user);
	boolean compra=false;
	for (ItemCarrito i : c.getCarro()) {
		Elementos e=ElementoDao.findElement(i.getId_Element());
		int stockCompra=e.getStock()-i.getCant();
		e.setStock(stockCompra);
		double precio=e.getPrice()*i.getCant();
		Compra com=new Compra(u,e,i.getCant(),precio);
		compra=CompraDao.addCompra(com);
		boolean ann=ElementoDao.addElemento(e);
	}
	%>
</body>
</html>