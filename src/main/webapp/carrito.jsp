<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.jacaranda.logica.*"%>
<%@ page import="com.jacaranda.accesoDatos.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Carrito de la compra</title>
</head>
<body>
	<%
	HttpSession sesion = request.getSession();
			int idElemento = Integer.parseInt(request.getParameter("nombre"));
			int cantidad = Integer.parseInt(request.getParameter("cant"));
			Carrito c=(Carrito)sesion.getAttribute("carrito");
			if (sesion.getAttribute("carrito")==null){
		 c=new Carrito();
		 sesion.setAttribute("carrito", c);
			if (cantidad <= 0) {
		response.sendRedirect("Errores.jsp?msg=\"Error la cantidad no puede ser negativa ni nula");
			}
			}
			ItemCarrito i = new ItemCarrito(idElemento, cantidad);
			c.add(i);
	%>
		
		<table border="1">
		<tr>
			<th>IdElemento</th>
			<th>Articulo</th>
			<th>Precio</th>
			<th>Cantidad</th>
		</tr>
		<%for (ItemCarrito it:c.getCarro()){
		Elementos e=ElementoDao.findElement(it.getId_Element());%>
		<tr>
			<td><%=it.getId_Element()%></td>
			<td><%=e.getName()%></td>
			<td><%=e.getPrice()%></td>
			<td><%=it.getCant()%></td>
		</tr>
		
		<%} %>
		</table>
		<form action="login" method="post">
		<input type="hidden" name="nom" value="<%=sesion.getAttribute("user")%>">
		<input type="hidden" name="pass" value="<%=sesion.getAttribute("pass")%>">
		<input type="submit" value="Volver">
		</form>
		<button>		
		<a href="compra.jsp">comprar</a>
		</button>
</body>
</html>