package com.jacaranda.servlet;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jacaranda.accesoDatos.UserDAO;
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
		String user=request.getParameter("nom");
		String pass=getMD5(request.getParameter("pass"));
		UserDAO u=new UserDAO();
		boolean us=u.validateUser(user, pass);
		if (!us) {
			response.sendRedirect("error.jsp");
		}else {
			response.sendRedirect("main");
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
