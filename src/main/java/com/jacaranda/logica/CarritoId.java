package com.jacaranda.logica;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Objects;

public class CarritoId implements Serializable {
	private String users;
	private int id_elemento;
	private LocalDateTime dateBuy;
	

	public CarritoId() {
		super();
		
	}


	public LocalDateTime getdateBuy() {
		return dateBuy;
	}

	public String getUsers() {
		return users;
	}

	public void setUsers(String users) {
		this.users = users;
	}

	public int getId_elemento() {
		return id_elemento;
	}

	public void setId_elemento(int id_elemento) {
		this.id_elemento = id_elemento;
	}

	public LocalDateTime getDateBuy() {
		return dateBuy;
	}

	public void setDateBuy(LocalDateTime dateBuy) {
		this.dateBuy = dateBuy;
	}

	@Override
	public int hashCode() {
		return Objects.hash(dateBuy, id_elemento, users);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CarritoId other = (CarritoId) obj;
		return Objects.equals(dateBuy, other.dateBuy) && id_elemento == other.id_elemento
				&& Objects.equals(users, other.users);
	}

	
	
	
}
