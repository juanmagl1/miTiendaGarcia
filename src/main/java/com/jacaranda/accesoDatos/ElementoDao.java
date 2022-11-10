package com.jacaranda.accesoDatos;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.query.Query;

import com.jacaranda.logica.Categoria;
import com.jacaranda.logica.Elementos;

public class ElementoDao {
	private StandardServiceRegistry sr;
	private SessionFactory sf;
	private Session sesion;
	public ElementoDao() {
		super();
		sr = new StandardServiceRegistryBuilder().configure().build();
		sf = new MetadataSources(sr).buildMetadata().buildSessionFactory();
		sesion = sf.openSession();
	}
	
	public List<Elementos> devuelveConjunto() {
		Query query = sesion.createQuery("SELECT e FROM com.jacaranda.logica.Elementos e");
		List<Elementos> conjuntos = (List<Elementos>) query.getResultList();
		return conjuntos;
	}
	public boolean addElemento(Elementos e) {
		boolean valid=false;
		
		try {
			sesion.getTransaction().begin();
			sesion.saveOrUpdate(e);
			sesion.getTransaction().commit();
			valid=true;
		}catch (Exception i) {
			i.getMessage();
		}
		return valid;
	}

}
