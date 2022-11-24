package com.jacaranda.servlet;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.time.LocalDate;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.digest.DigestUtils;

import com.jacaranda.accesoDatos.ElementoDao;
import com.jacaranda.accesoDatos.UserDAO;
import com.jacaranda.logica.Elementos;
import com.jacaranda.logica.User;

/**
 * Servlet implementation class register
 */
@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if (request.getParameter("user")==null||request.getParameter("pass")==null||request.getParameter("nom")==null||request.getParameter("corr")==null||request.getParameter("date")==null||request.getParameter("sex")==null) {
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
		}else {
			String user=request.getParameter("user");
			String pass=DigestUtils.md5Hex(request.getParameter("pass"));
			User aux=UserDAO.findUser(user);
			if (aux==null) {
				boolean b=UserDAO.addUser(new User(user,pass,request.getParameter("nom"),request.getParameter("corr"),LocalDate.parse(request.getParameter("date")),request.getParameter("sex").charAt(0),false));
				if (b) {
					List<Elementos>l=ElementoDao.devuelveConjunto();
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
					response.getWriter().append("<!DOCTYPE html>\r\n"
							+ "<html>\r\n"
							+ "<head>\r\n"
							+ "<link rel=\"stylesheet\" href=\"./css/tabla.css\">\r\n"
							+ "    <title>Elementos</title>\r\n"
							+ "</head>\r\n"
							+ "<body>\r\n"
							+ "  <button><a href=\"index.jsp\">Cerrar Sesión</a></button>\r\n"
							+ "    <table border=\"1\">\r\n"
							+ "        <tr>\r\n"
							+ "            <th>Id</th>\r\n"
							+ "            <th>Name</th>\r\n"
							+ "            <th>Description</th>\r\n"
							+ "            <th>Price</th>\r\n"
							+ "            <th>Category</th>\r\n"
							+"<th>Botones</th>"
							+ "        </tr>\r\n"
							+ s
							+ "    </table>\r\n"
							+ "</body>\r\n"
							+ "</html>");
				}
			}else {
				response.getWriter().format("<!DOCTYPE html>\r\n"
						+ "<html lang=\"en\">\r\n"
						+ "<head>\r\n"
						+ "    <title>Document</title>\r\n"
						+ "</head>\r\n"
						+ "<body>\r\n"
						+ "    <h1>No se puede añadir uno con ese user porque ya existe</h1>\r\n"
						+ "</body>\r\n"
						+ "</html>");
			}
			
		}
	}
}
