package com.jacaranda.logica;

import java.util.ArrayList;

public class Carrito {
	private ArrayList<ItemCarrito> carro;

	public Carrito() {
		super();
		carro = new ArrayList<ItemCarrito>();

	}

	public ArrayList<ItemCarrito> getCarro() {
		return carro;
	}
	public boolean add(ItemCarrito i) {
		return this.carro.add(i);
	}

}
