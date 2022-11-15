package com.jacaranda.accesoDatos;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import com.jacaranda.logica.User;

public class UserDAO {
	
	
	public UserDAO() {
		super();
	
	}
	
	public static boolean validateUser(String login, String password) {
		Session session=ConnectionBD.getSession();
		boolean valid = false;
		User u = (User) session.get(User.class,login);
		if (u==null) {
			u=new User();
		}else {
			if (u.getPass().toUpperCase().equalsIgnoreCase(password.toUpperCase())) {
				valid=true;
			}
			
		}
		return valid;
	}
	public static boolean addUser(User u) {
		Session session=ConnectionBD.getSession();
		boolean valid=false;
		try {
			session.getTransaction().begin();
			session.saveOrUpdate(u);
			session.getTransaction().commit();
			valid=true;
		}catch (Exception e) {
			e.getMessage();
		}
		return valid;

	}
	public static User findUser(String user) {
		Session session=ConnectionBD.getSession();
		User aux=session.get(User.class, user);
		return aux;
	}
}
