package com.jacaranda.accesoDatos;

import org.hibernate.Session;

import com.jacaranda.logica.Compra;


public class CompraDao {

	public CompraDao() {
		super();
		// TODO Auto-generated constructor stub
	}
	public static boolean addCompra(Compra c) {
		boolean buy=false;
		Session sesion=ConnectionBD.getSession();
		try {
			sesion.getTransaction().begin();
			sesion.saveOrUpdate(c);
			sesion.getTransaction().commit();
			buy=true;
		}catch (Exception e) {
			e.getMessage();
			sesion.getTransaction().rollback();
			
		}
		return buy;
	}
}
