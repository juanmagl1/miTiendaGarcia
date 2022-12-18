<%@page import="com.jacaranda.accesoDatos.ElementoDao"%>
<%@page import="com.jacaranda.accesoDatos.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.jacaranda.logica.*"%>
<%@ page import="com.jacaranda.accesoDatos.*"%>
<%@ page import="java.time.LocalDateTime"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Compra realizada con exito</h1>
	<%
	HttpSession sesion = request.getSession();
	Carrito c = (Carrito) sesion.getAttribute("carrito");
	String user = (String) sesion.getAttribute("user");
	User u = UserDAO.findUser(user);
	boolean purchase=false;
	for (ItemCarrito i : c.getCarro()) {
		Elementos e=ElementoDao.findElement(i.getId_Element());
		int stockPurchase=e.getStock()-i.getCant();
		e.setStock(stockPurchase);
		double price=Math.round(e.getPrice()*i.getCant());
		Compra com=new Compra(u,e,i.getCant(),price);
		purchase=CompraDao.addCompra(com);
		boolean add=ElementoDao.addElemento(e);
	}
	c.getCarro().clear();
	
	%>
	<form action="login" method="POST">
	<input type="text" value="<%=user%>" hidden="">
	<input type="submit" value="volver">
	</form>
</body>
</html>