<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/tiendaMedicamentos/login" method="post">
	<label>Usuario</label>
	<input type="text" name="nom" required><br>
	<label>Contraseña</label>
	<input type="password" name="pass" required><br>
	<input type="submit" name="butt"><br>
	<a href="registro.jsp">Si no tiene contraseña, registrese aquí</a>
</form>
</body>
</html>