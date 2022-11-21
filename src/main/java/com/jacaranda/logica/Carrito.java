package com.jacaranda.logica;

import java.util.List;

public class Carrito {
	private List<ItemCarrito> carro;

	public Carrito() {
		super();
		carro = null;

	}

	public List<ItemCarrito> getCarro() {
		return carro;
	}
	public boolean add(ItemCarrito i) {
		return carro.add(i); 
	}

}
