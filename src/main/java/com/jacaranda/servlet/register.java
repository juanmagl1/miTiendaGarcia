package com.jacaranda.servlet;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jacaranda.accesoDatos.UserDAO;
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
    
    public static String getMD5(String input) {
   	 try {
   	 MessageDigest md = MessageDigest.getInstance("MD5");
   	 byte[] messageDigest = md.digest(input.getBytes());
   	 BigInteger number = new BigInteger(1, messageDigest);
   	 String hashtext = number.toString(16);

   	 while (hashtext.length() < 32) {
   	 hashtext = "0" + hashtext;
   	 }
   	 return hashtext;
   	 }
   	 catch (NoSuchAlgorithmException e) {
   	 throw new RuntimeException(e);
   	 }
   	 }


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		UserDAO u = new UserDAO();
		boolean b=u.addUser(new User(request.getParameter("user"),getMD5(request.getParameter("pass")),request.getParameter("nom"),request.getParameter("corr"),LocalDate.parse(request.getParameter("date")),request.getParameter("sex").charAt(0),false));
		if (b) {
			response.sendRedirect("../tiendaMedicamentos/main");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
