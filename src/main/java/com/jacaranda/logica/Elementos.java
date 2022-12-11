package com.jacaranda.logica;

import java.util.List;
import java.util.Objects;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity(name = "ELEMENTOS")
public class Elementos {
	@Id
	private int id;
	private String name;
	private String description;
	private double price;
	private int stock;
	@ManyToOne
	@JoinColumn(name = "id_categoria")
	private Categoria id_categoria;
	@OneToMany(mappedBy="id_elemento",cascade= CascadeType.ALL,orphanRemoval=true)
	private List<Compra>userCompran;
	

	public Elementos(int id, String name, String description, double price, int stock, Categoria id_categoria) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.price = price;
		this.stock=stock;
		this.id_categoria = id_categoria;
	}
	
	public Elementos(int id, String name, String description, double price, Categoria id_categoria) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.price = price;
		this.id_categoria = id_categoria;
	}

	public Elementos() {
		super();
	}

	public int getId() {
		return id;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public Categoria getId_categoria() {
		return id_categoria;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public Categoria getid_Categoria() {
		return id_categoria;
	}

	public void setCategoria(Categoria id_categoria) {
		this.id_categoria = id_categoria;
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Elementos other = (Elementos) obj;
		return id == other.id;
	}

}
