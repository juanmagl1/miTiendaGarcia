package com.jacaranda.servlet;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.cli.Digest;
import org.apache.commons.codec.digest.DigestUtils;

import com.jacaranda.accesoDatos.CategoriaDao;
import com.jacaranda.accesoDatos.ElementoDao;
import com.jacaranda.accesoDatos.UserDAO;
import com.jacaranda.logica.Categoria;
import com.jacaranda.logica.Elementos;
import com.jacaranda.logica.User;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cabecera="<!DOCTYPE html>\r\n"
				+ "<html>\r\n"
				+ "<head>\r\n"
				+ "	<title>Login</title>\r\n"
				+ "	<link rel=\"stylesheet\" href=\"./css/tabla.css\">\r\n"
				+ "</head>";
		String tabla="<table border=\"1\">\r\n"
				+ "		<tr>\r\n"
				+ "			<th>Id</th>\r\n"
				+ "			<th>name</th>\r\n"
				+ "			<th>Description</th>\r\n"
				+ "			<th>Price</th>\r\n"
				+ "			<th>Category</th>\r\n"
				+ "			<th>Botones</th>	\r\n"
				+ "		</tr>";
		// Recupero la sesion
		HttpSession sesion = request.getSession();
		// Meto el atributo user en una variable
		String atributo = (String) sesion.getAttribute("user");
		// Si el atributo es nulo es porque viene de iniciar sesión
		if (atributo == null) {
			// Si la contraseña o el usuario es nulo no se puede meter elementos nulos
			if (request.getParameter("pass") == null || request.getParameter("nom") == null) {
				response.getWriter()
						.append("<!DOCTYPE html>\r\n" 
								+ "<html>\r\n" 
								+ "<head>\r\n" 
								+ "<link rel=\"stylesheet\" href=\"./css/tabla.css\">\r\n"
								+ "    <title>Document</title>\r\n"
								+ "</head>\r\n"	 
								+ "<body>\r\n" + "  <h1>Error no puedes meter elementos nulos o no estás registrado</h1>\r\n"
								+ "  <button type=\"submit\"><a href=\"index.jsp\">Volver atrás</a></button>\r\n"
								+ "</body>\r\n" + "</html>");
			} else {
				// Si no entra en la condición anterior le añadimos la
				// contraseña cifrada y validamos
				String user = request.getParameter("nom");
				String pass = DigestUtils.md5Hex(request.getParameter("pass"));
				boolean us = UserDAO.validateUser(user, pass);
				// Uso el aux para despues coger el get admin para comprobar
				// Si es administrador
				User aux = UserDAO.findUser(user);
				if (us) {
					// Si valida el usuario y la
					// Contraseña y creo los dos
					// atributos y los guardo en la sesion
					sesion.setAttribute("user", user);
					sesion.setAttribute("pass", pass);
					List<Elementos> l = ElementoDao.devuelveConjunto();
					StringBuilder s = new StringBuilder();
					for (Elementos i : l) {
						s.append("<tr>" + "<td>" + i.getId() + "</td>" + "<td>" + i.getName() + "</td>" + "<td>"
								+ i.getDescription() + "</td>" + "<td>" + i.getPrice() + "</td>" + "<td>"
								+ i.getid_Categoria().getName() + "</td>"+"<td>"+"<form action=\"carrito.jsp\">"+"<input type=\"number\"min=\0\" name=\"cant\"placeholder=\"Intoduzca Cantidad\">"+"<input type=\"hidden\" name=\"nombre\"value="+ i.getId()+">"+"<input type=\"submit\" value=\"Añadir al carrito\">"+"</form>"+"</td>"+"</tr>");
					}
					// Si el usuario es admin le añado el boton de addProduct
					if (aux.isAdmin()) {
						String cuerpo="<body>\r\n"
								+ "	<header class=\"header\">\r\n"
								+ "		<p>"+user+"</p>\r\n"
								+ "	</header>\r\n"
								+ "	<button><a href=\"index.jsp\">Cerrar Sesión</a></button>\r\n"
								+ "	<button><a href=\"ComprasPorUsuario.jsp\">Ver compras</a></button>\r\n"
								+ "	<button><a href=\"addProduct.jsp\">Añadir producto</a></button>";
						response.getWriter().append(cabecera+ cuerpo + tabla
													+ "        </tr>\r\n" + s + "    </table>\r\n" + "</body>\r\n" + "</html>");
					}else {
						String cuerpo="<body>\r\n"
								+ "	<header class=\"header\">\r\n"
								+ "		<p>"+user+"</p>\r\n"
								+ "	</header>\r\n"
								+ "	<button><a href=\"index.jsp\">Cerrar Sesión</a></button>\r\n"
								+ "	<button><a href=\"ComprasPorUsuario.jsp\">Ver compras</a></button>\r\n";
						response.getWriter().append(cabecera+cuerpo+tabla
								+ "</tr>\r\n"
								+ s
								+ "    </table>\r\n"
								+ "</body>\r\n"
								+ "</html>");
					}
					//Si no esque el metodo ha dado false y no está registrado ni logueado y lo reenvio a una pagina
					//De error
				}else {
					response.getWriter().append("<!DOCTYPE html>\r\n"
							+ "<html>\r\n"
							+ "<head>\r\n"
							+ "<link rel=\"stylesheet\" href=\"./css/tabla.css\">\r\n"
							+ "    <title>Document</title>\r\n"
							+ "</head>\r\n"
							+ "<body>\r\n"
							+ "  <h1>Error no estás registrado correctamente aquí</h1>\r\n"
							+ "  <button type=\"submit\"><a href=\"index.jsp\">Volver atrás</a></button>\r\n"
							+ "</body>\r\n"
							+ "</html>");
				}
				
			}
			//Si el atributo de la sesion no es nulo lo recupero y 
			//Le muestro el menu
			}else {
				User aux=UserDAO.findUser(atributo);
				List<Elementos>l=ElementoDao.devuelveConjunto();
				StringBuilder s=new StringBuilder();
						for (Elementos i:l) {
							s.append("<tr>"
									+"<td>"+i.getId()+"</td>"
									+"<td>"+i.getName()+"</td>"
									+"<td>"+i.getDescription()+"</td>"
									+"<td>"+i.getPrice()+"</td>"
									+ "<td>"+ i.getid_Categoria().getName() +"</td>"
									+"<td>"+"<form action=\"carrito.jsp\">"+"<input type=\"number\"min=\0\" name=\"cant\"placeholder=\"Intoduzca Cantidad\">"+"<input type=\"hidden\" name=\"nombre\"value="+ i.getId()+">"+"<input type=\"submit\" value=\"Añadir al carrito\">"+"</form>"+"</td>"+"</tr>"
									);
						}
				if (aux.isAdmin()) {
					String cuerpo="<body>\r\n"
							+ "	<header class=\"header\">\r\n"
							+ "		<p>"+aux.getName()+"</p>\r\n"
							+ "	</header>\r\n"
							+ "	<button><a href=\"index.jsp\">Cerrar Sesión</a></button>\r\n"
							+ "	<button><a href=\"index.jsp\">Cerrar Sesión</a></button>\r\n"
							+ "	<button><a href=\"ComprasPorUsuario.jsp\">Ver compras</a></button>\r\n";
					response.getWriter().append(cabecera+ cuerpo + tabla
							+ s
							+ "    </table>\r\n"
							+ "</body>\r\n"
							+ "</html>");
				}else {
					String cuerpo="<body>\r\n"
							+ "	<header class=\"header\">\r\n"
							+ "		<p>"+aux.getName()+"</p>\r\n"
							+ "	</header>\r\n"
							+ "	<button><a href=\"index.jsp\">Cerrar Sesión</a></button>\r\n"
							+ "	<button><a href=\"ComprasPorUsuario.jsp\">Ver compras</a></button>\r\n";
					response.getWriter().append(cabecera+ cuerpo + tabla
							+ s
							+ "</table>\r\n"
							+ "</body>\r\n"
							+ "</html>");
				}
			}

	}
	}
