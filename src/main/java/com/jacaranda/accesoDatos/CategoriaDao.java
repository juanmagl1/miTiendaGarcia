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
	private StandardServiceRegistry sr;
	private SessionFactory sf;
	private Session sesion;

	public CategoriaDao() {
		super();
		sr = new StandardServiceRegistryBuilder().configure().build();
		sf = new MetadataSources(sr).buildMetadata().buildSessionFactory();
		sesion = sf.openSession();
	}

	public Categoria findCategoria(int id) {
		Categoria aux = null;
		try {
			aux = sesion.get(Categoria.class, id);
		} catch (Exception e) {
			e.getMessage();
		}
		return aux;

	}

	public List<Categoria> devuelveCategoria() {
		Query query = sesion.createQuery("SELECT c FROM com.jacaranda.logica.Categoria c");
		List<Categoria> conjunto = (List<Categoria>) query.getResultList();
		return conjunto;
	}

}
