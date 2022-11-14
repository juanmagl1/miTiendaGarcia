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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    //He tenido que crear el do get para que me redirija al login
    //porque el boton añade por get siempre
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Recupero la sesion
		HttpSession sesion=request.getSession();
		//Meto el atributo user en una variable
		String atributo=(String)sesion.getAttribute("user");
		//Si el atributo es nulo es porque viene de iniciar sesión
		if (atributo==null) {
			String user=request.getParameter("nom");
			//Compruebo si el usuario es nulo y si lo es
			//Le compruebo si la contraseña es nula para redirigir
			//A una página de error
			if (user==null) {
				if (request.getParameter("pass")==null) {
					response.getWriter().append("<!DOCTYPE html>\r\n"
							+ "<html>\r\n"
							+ "<head>\r\n"
							+ "    <title>Document</title>\r\n"
							+ "</head>\r\n"
							+ "<body>\r\n"
							+ "  <h1>Error no puedes meter elementos nulos</h1>\r\n"
							+ "  <button type=\"submit\"><a href=\"index.jsp\">Volver atrás</a></button>\r\n"
							+ "</body>\r\n"
							+ "</html>");
				}
				
		}
			//Si no entra en la condición anterior le añadimos la 
			//contraseña cifrada y validamos
			String pass=DigestUtils.md5Hex(request.getParameter("pass"));
			UserDAO u=new UserDAO();
			boolean us=u.validateUser(user, pass);
			//Uso el aux para despues coger el get admin para comprobar
			//Si es administrador
			User aux=u.findUser(user);
			if (us) {
				//Si valida la sesion me creo los dos 
				//atributos y los guardo en la sesion
				sesion.setAttribute("user", user);
				sesion.setAttribute("pass", pass);
				ElementoDao d=new ElementoDao();
				List<Elementos>l=d.devuelveConjunto();
				StringBuilder s=new StringBuilder();
						for (Elementos i:l) {
							s.append("<tr>"
									+"<td>"+i.getId()+"</td>"
									+"<td>"+i.getName()+"</td>"
									+"<td>"+i.getDescription()+"</td>"
									+"<td>"+i.getPrice()+"</td>"
									+ "<td>"+ i.getid_Categoria().getName() +"</td>"
									);
						}
				//Si el usuario es admin le añado el boton de addProduct
				if (aux.isAdmin()) {
					response.getWriter().append("<!DOCTYPE html>\r\n"
							+ "<html>\r\n"
							+ "<head>\r\n"
							+ "    <title>Elementos</title>\r\n"
							+ "</head>\r\n"
							+ "<body>\r\n"
							+ "  <button><a href=\"addProduct.jsp\">Añadir Elemento</a></button>\r\n"
							+ "    <table border=\"1\">\r\n"
							+ "        <tr>\r\n"
							+ "            <th>Id</th>\r\n"
							+ "            <th>Name</th>\r\n"
							+ "            <th>Description</th>\r\n"
							+ "            <th>Price</th>\r\n"
							+ "            <th>Category</th>\r\n"
							+ "        </tr>\r\n"
							+ s
							+ "    </table>\r\n"
							+ "</body>\r\n"
							+ "</html>");
				}else {
							
					response.getWriter().append("<!DOCTYPE html>\r\n"
							+ "<html>\r\n"
							+ "<head>\r\n"
							+ "    <title>Elementos</title>\r\n"
							+ "</head>\r\n"
							+ "<body>\r\n"
							+ "    <table border=\"1\">\r\n"
							+ "        <tr>\r\n"
							+ "            <th>Id</th>\r\n"
							+ "            <th>Name</th>\r\n"
							+ "            <th>Description</th>\r\n"
							+ "            <th>Price</th>\r\n"
							+ "            <th>Category</th>\r\n"
							+ "        </tr>\r\n"
							+ s
							+ "    </table>\r\n"
							+ "</body>\r\n"
							+ "</html>");
				}
				//Sino lo reenvio a una pagina de error
			}else {
				response.getWriter().append("<!DOCTYPE html>\r\n"
						+ "<html>\r\n"
						+ "<head>\r\n"
						+ "    <title>Document</title>\r\n"
						+ "</head>\r\n"
						+ "<body>\r\n"
						+ "  <h1>Error no estás registrado correctamente aquí</h1>\r\n"
						+ "  <button type=\"submit\"><a href=\"index.jsp\">Volver atrás</a></button>\r\n"
						+ "</body>\r\n"
						+ "</html>");
			}
			//Si el atributo de la sesion no es nulo lo recupero y 
			//Le muestro el menu
		}else {
			UserDAO u=new UserDAO();
			User aux=u.findUser((String)sesion.getAttribute("user"));
			ElementoDao d=new ElementoDao();
			List<Elementos>l=d.devuelveConjunto();
			StringBuilder s=new StringBuilder();
					for (Elementos i:l) {
						s.append("<tr>"
								+"<td>"+i.getId()+"</td>"
								+"<td>"+i.getName()+"</td>"
								+"<td>"+i.getDescription()+"</td>"
								+"<td>"+i.getPrice()+"</td>"
								+ "<td>"+ i.getid_Categoria().getName() +"</td>"
								);
					}
			if (aux.isAdmin()) {
				response.getWriter().append("<!DOCTYPE html>\r\n"
						+ "<html>\r\n"
						+ "<head>\r\n"
						+ "    <title>Elementos</title>\r\n"
						+ "</head>\r\n"
						+ "<body>\r\n"
						+ "  <button><a href=\"addJugadores.jsp\">Añadir Elemento</a></button>\r\n"
						+ "    <table border=\"1\">\r\n"
						+ "        <tr>\r\n"
						+ "            <th>Id</th>\r\n"
						+ "            <th>Name</th>\r\n"
						+ "            <th>Description</th>\r\n"
						+ "            <th>Price</th>\r\n"
						+ "            <th>Category</th>\r\n"
						+ "        </tr>\r\n"
						+ s
						+ "    </table>\r\n"
						+ "</body>\r\n"
						+ "</html>");
			}else {
						
				response.getWriter().append("<!DOCTYPE html>\r\n"
						+ "<html>\r\n"
						+ "<head>\r\n"
						+ "    <title>Elementos</title>\r\n"
						+ "</head>\r\n"
						+ "<body>\r\n"
						+ "    <table border=\"1\">\r\n"
						+ "        <tr>\r\n"
						+ "            <th>Id</th>\r\n"
						+ "            <th>Name</th>\r\n"
						+ "            <th>Description</th>\r\n"
						+ "            <th>Price</th>\r\n"
						+ "            <th>Category</th>\r\n"
						+ "        </tr>\r\n"
						+ s
						+ "    </table>\r\n"
						+ "</body>\r\n"
						+ "</html>");
			}
		}
		}
		

}
