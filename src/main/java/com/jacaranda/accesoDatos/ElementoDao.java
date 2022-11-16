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
import com.jacaranda.logica.User;

public class ElementoDao {

	public ElementoDao() {
		super();

	}
	
	public static List<Elementos> devuelveConjunto() {
		Session sesion=ConnectionBD.getSession();
		Query query = sesion.createQuery("SELECT e FROM com.jacaranda.logica.Elementos e");
		List<Elementos> conjuntos = (List<Elementos>) query.getResultList();
		return conjuntos;
	}
	public static boolean addElemento(Elementos e) {
		boolean valid=false;
		Session sesion=ConnectionBD.getSession();
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
	public static Elementos findElement(int id) {
		
		Session sesion=ConnectionBD.getSession();
		Elementos aux = sesion.get(Elementos.class, id);
		return aux;

	}

}
