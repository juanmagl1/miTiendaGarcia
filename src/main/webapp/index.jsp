<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/index.css">
<meta charset="UTF-8">
<title>Iniciar Sesion</title>
</head>
<body>
<%HttpSession sesion=request.getSession();
sesion.invalidate();
%>
<header class="header">
	<img src="https://img2.freepng.es/20180331/yzq/kisspng-pharmacy-logo-pharmacist-pharmaceutical-drug-pharmacy-5abf3058c52fd8.1225652515224791928077.jpg" height="100px" width="100px">
</header>
<div class="container">
	<section class="form">
	<form action="login" method="post">
	<label>Usuario</label>
	<input type="text" name="nom" required><br>
	<label>Contraseña</label>
	<input type="password" name="pass" required><br>
	<input type="submit" name="butt"><br>
	</form>
	<a href="registro.jsp">Si no tiene contraseña, registrese aquí</a>
	</section>
	</div>

</body>
</html>