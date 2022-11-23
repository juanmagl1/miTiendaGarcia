package com.jacaranda.accesoDatos;

import org.hibernate.Session;

import com.jacaranda.logica.Compra;
import com.jacaranda.logica.ItemCarrito;

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
			sesion.getTransaction().rollback();
			e.getMessage();
			
		}
		return buy;
	}
}
