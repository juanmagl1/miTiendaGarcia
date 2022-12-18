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
			
		}
		return buy;
	}
	public static List<Compra> articulosComprados (User users){
		Session sesion=ConnectionBD.getSession();
		List<Compra> list= (List<Compra>) sesion
				.createQuery("From COMPRA c " + " where c.users=:users order by c.dateBuy DESC",Compra.class)
				.setParameter("users", users).list();			
		return list;
	}
}
