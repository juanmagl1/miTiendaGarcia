<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.jacaranda.logica.*"%>
<%@ page import="com.jacaranda.accesoDatos.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/tabla.css">
<title>Carrito de la compra</title>
</head>
<body>
	<%
	HttpSession sesion = request.getSession();
	String user=(String)sesion.getAttribute("user");
	int elementId = Integer.parseInt(request.getParameter("nombre"));
	int amount = Integer.parseInt(request.getParameter("cant"));
	Carrito c = (Carrito) sesion.getAttribute("carrito");
	if (amount <= 0) {
		response.sendRedirect("Errores.jsp?msg=\"Error la cantidad no puede ser negativa ni nula");
	}else{
		
	if (sesion.getAttribute("carrito") == null) {
		c = new Carrito();
		sesion.setAttribute("carrito", c);
		
	}
	double totalAmount=0;
	ItemCarrito i = new ItemCarrito(elementId, amount);
	Elementos elements=ElementoDao.findElement(elementId);
	if (elements.getStock()<amount){
		response.sendRedirect("Errores.jsp?msg=\"Error la cantidad no puede ser mayor que el stock");
	
	
	}else{
		
	//Vamos a añadir el elemento a la lista, pero primero 
	//Tenemos que comprobar si está repetido o no
	//Si el indexOf devuelve -1 es que no hay ningun elemento con ese id 
	if (c.getCarro().indexOf(i)==-1){
	//Entonces lo añado
	c.add(i);
	
	
	}else {
		//Si no entra en el if obtengo el item de la lista
		ItemCarrito aux=c.getCarro().get(c.getCarro().indexOf(i));
		//Sumo la cantidad mas la que me han pasado y se lo asigno
		//en el set
		int cant=aux.getCant()+amount;
		aux.setCant(cant);
	}%>
<header class="header">
<p><%=user %></p>
</header>
	<table border="1">
		<tr>
			<th>IdElemento</th>
			<th>Articulo</th>
			<th>Precio</th>
			<th>Cantidad</th>
		</tr>
		<%
		for (ItemCarrito it : c.getCarro()) {
		Elementos e = ElementoDao.findElement(it.getId_Element());
		totalAmount+=e.getPrice()*it.getCant();
		%>
		<tr>
			<td><%=it.getId_Element()%></td>
			<td><%=e.getName()%></td>
			<td><%=e.getPrice()%></td>
			<td><%=it.getCant()%></td>
		</tr>
		<%
		}
		%>
	</table>
	<h1>Precio total de la compra: <%=totalAmount %></h1>
	<form action="login" method="post">
		<input type="hidden" name="nom" value="<%=sesion.getAttribute("user")%>">
		<input type="hidden" name="pass" value="<%=sesion.getAttribute("pass")%>">
		<input type="submit" value="Volver">
	</form>
	<button>
		<a href="compra.jsp">comprar</a>
	</button>
	<%} %>
	<%} %>
</body>
</html>