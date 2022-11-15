package com.jacaranda.accesoDatos;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.query.Query;

import com.jacaranda.logica.Categoria;

public class CategoriaDao {
	

	public CategoriaDao() {
		super();
	}

	public static Categoria findCategoria(int id) {
		Categoria aux = null;
		Session sesion=ConnectionBD.getSession();
		try {
			aux = sesion.get(Categoria.class, id);
		} catch (Exception e) {
			e.getMessage();
		}
		return aux;

	}

	public static List<Categoria> devuelveCategoria() {
		Session sesion=ConnectionBD.getSession();
		Query query = sesion.createQuery("SELECT c FROM com.jacaranda.logica.Categoria c");
		List<Categoria> conjunto = (List<Categoria>) query.getResultList();
		return conjunto;
	}

}
