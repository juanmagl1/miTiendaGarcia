<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/tiendaMedicamentos/register" method="get">
		<label>Usuario</label><br>
		<input type="text" name="user" required><br>
		<label>Contraseña</label><br>
		<input type="password" name="pass" required><br>
		<label>Nombre y Apellidos</label><br>
		<input type="text" name="nom" required><br>
		<label>email</label><br>
		<input type="email" name="corr" required><br>
		<label>Fecha de nacimiento</label><br>
		<input type="date" name="date" required><br>
		<label>Genero</label><br>
		<input type="radio" name="sex" value="M">Mujer
		<input type="radio" name="sex" value="H">Hombre<br>
		<input type="submit" name="butt" value="Enviar">
		
	</form>
</body>
</html>