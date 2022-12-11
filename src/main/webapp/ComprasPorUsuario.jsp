<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jacaranda.accesoDatos.*" %>
<%@ page import="com.jacaranda.logica.*" %>
<%@ page import="java.util.List" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%HttpSession sesion=request.getSession();
String user=(String)sesion.getAttribute("user");
String pass=(String)sesion.getAttribute("pass");
User aux = UserDAO.findUser(user);
%>
<h1>Articulos comprados por <%=user%></h1>

<table border="1">
<tr>
<th>Id</th>
<th>Precio</th>
<th>Fecha de compra</th>
<th>Cantidad</th>
</tr>
<%List<Compra> lista=CompraDao.articulosComprados(aux);
for (Compra c:lista){%>
	<tr>
	<td><%=c.getId_elemento().getId()%></td>
	<td><%=c.getPrice()%></td>
	<td><%=c.getDateBuy()%></td>
	<td><%=c.getAmount()%></td>
	</tr>
<%} %>
</table>
<form action="login" method="POST">
	<input type="text" value="<%=user%>" hidden="">
	<input type="submit" value="volver">
</form>
</body>
</html>