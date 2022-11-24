package com.jacaranda.logica;

import java.time.LocalDate;
import java.time.LocalDateTime;

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
	@JoinColumn(name = "users", insertable = false, updatable = false)
	private User usuario;

	@Id
	@ManyToOne
	@JoinColumn(name = "id_elemento", insertable = false, updatable = false)
	private Elementos elemento;

	@Id
	private LocalDateTime dateBuy;
	
	private int amount;
	private double price;
	
	public Compra(User usuario, Elementos elemento, int amount, double price) {
		super();
		this.usuario = usuario;
		this.elemento = elemento;
		this.dateBuy = LocalDateTime.now();
		this.amount = amount;
		this.price = price;
	}

	public Compra() {
		super();
	}

	public User getUsuario() {
		return usuario;
	}

	public void setUsuario(User usuario) {
		this.usuario = usuario;
	}

	public Elementos getElemento() {
		return elemento;
	}

	public void setElemento(Elementos elemento) {
		this.elemento = elemento;
	}

	public LocalDateTime getDateBuy() {
		return dateBuy;
	}

	public void setFechaCompra(LocalDateTime fechaCompra) {
		this.dateBuy = fechaCompra;
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
	public String toString() {
		return "Compra [usuario=" + usuario + ", elemento=" + elemento + ", fechaCompra=" + dateBuy + "]";
	}
	
	
	

}
