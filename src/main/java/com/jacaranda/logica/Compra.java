package com.jacaranda.logica;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity (name="COMPRA")
@IdClass(CarritoId.class)
public class Compra {
	@Id
	@ManyToOne
	@JoinColumn(name = "users")
	private User users;

	@Id
	@ManyToOne
	@JoinColumn(name = "id_elemento")
	private Elementos id_elemento;

	@Id
	private LocalDateTime dateBuy;
	
	private int amount;
	private double price;
	public Compra(User users, Elementos id_elemento, LocalDateTime dateBuy, int amount, double price) {
		super();
		this.users = users;
		this.id_elemento = id_elemento;
		this.dateBuy = dateBuy;
		this.amount = amount;
		this.price = price;
	}
	
	public Compra() {
		super();
	}

	public User getUsers() {
		return users;
	}
	public void setUsers(User users) {
		this.users = users;
	}
	public Elementos getId_elemento() {
		return id_elemento;
	}
	public void setId_elemento(Elementos id_elemento) {
		this.id_elemento = id_elemento;
	}
	public LocalDateTime getDateBuy() {
		return dateBuy;
	}
	public void setDateBuy(LocalDateTime dateBuy) {
		this.dateBuy = dateBuy;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
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
		Compra other = (Compra) obj;
		return Objects.equals(dateBuy, other.dateBuy) && Objects.equals(id_elemento, other.id_elemento)
				&& Objects.equals(users, other.users);
	}
	
	
	
	
	

}
