package com.jacaranda.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jacaranda.accesoDatos.CategoriaDao;
import com.jacaranda.logica.Categoria;

/**
 * Servlet implementation class main
 */
@WebServlet("/main")
public class main extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public main() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		CategoriaDao c=new CategoriaDao();
		List<Categoria>l=c.devuelveCategoria();
		StringBuilder s=new StringBuilder();
				for (Categoria i:l) {
					s.append("<tr>"
							+"<td>"+i.getId()+"</td>"
							+"<td>"+i.getName()+"</td>"
							+"<td>"+i.getDescription()+"</td>"
							+ "<td><a href=\"mainProductos.jsp?id=" + i.getId() + "\">Ver Productos</td>"
							);
				}
				
		response.getWriter().append("<!DOCTYPE html>\r\n"
				+ "<html>\r\n"
				+ "<head>\r\n"
				+ "    <title>Document</title>\r\n"
				+ "</head>\r\n"
				+ "<body>\r\n"
				+ "    <table border=\"1\">\r\n"
				+ "        <tr>\r\n"
				+ "            <th>Id</th>\r\n"
				+ "            <th>Name</th>\r\n"
				+ "            <th>Description</th>\r\n"
				+ "            <th>Lista Elementos</th>\r\n"
				+ "        </tr>\r\n"
				+ s
				+ "    </table>\r\n"
				+ "</body>\r\n"
				+ "</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
