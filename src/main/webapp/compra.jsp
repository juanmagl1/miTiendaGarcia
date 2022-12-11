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
	boolean compra=false;
	for (ItemCarrito i : c.getCarro()) {
		Elementos e=ElementoDao.findElement(i.getId_Element());
		int stockCompra=e.getStock()-i.getCant();
		e.setStock(stockCompra);
		double precio=e.getPrice()*i.getCant();
		Compra com=new Compra(u,e,LocalDateTime.now(),i.getCant(),precio);
		compra=CompraDao.addCompra(com);
		boolean ann=ElementoDao.addElemento(e);
	}
	c.getCarro().clear();
	
	%>
	<form action="login" method="POST">
	<input type="text" value="<%=user%>" hidden="">
	<input type="submit" value="volver">
	</form>
</body>
</html>