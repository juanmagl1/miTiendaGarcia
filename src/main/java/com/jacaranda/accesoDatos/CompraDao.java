package com.jacaranda.accesoDatos;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.jacaranda.logica.Compra;
import com.jacaranda.logica.User;


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
	public static List<Compra> articulosComprados (){
		Session sesion=ConnectionBD.getSession();
		List<Compra> list= new ArrayList<>();
		Query query=sesion.createQuery("SELECT c FROM COMPRA c ORDER BY dateBuy ASC");
		list= query.getResultList();
		return list;
	}
}
