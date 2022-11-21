package com.jacaranda.logica;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
@IdClass(CarritoId.class)
public class Compra {
	@Id
	@ManyToOne
	@JoinColumn(name = "id_elemento", insertable = false, updatable = false)
	private User usuario;

	@Id
	@ManyToOne
	@JoinColumn(name = "users", insertable = false, updatable = false)
	private Elementos elemento;

	@Id
	@ManyToOne
	@JoinColumn(name = "dateBuy", insertable = false, updatable = false)
	private LocalDateTime fechaCompra;
	
	private int amount;
	private int price;
	
	public Compra(User usuario, Elementos elemento, LocalDateTime fechaCompra, int amount, int price) {
		super();
		this.usuario = usuario;
		this.elemento = elemento;
		this.fechaCompra = fechaCompra;
		this.amount = amount;
		this.price = price;
	}

	public Compra() {
		super();
	}
	
	

}
