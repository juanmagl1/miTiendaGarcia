package com.jacaranda.logica;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.Objects;

public class CarritoId implements Serializable {
	private String usuario;
	private int elemento;
	private LocalDate dateBuy;
	
	public LocalDate getdateBuy() {
		return dateBuy;
	}

	public void setFechaCompra(LocalDate dateBuy) {
		this.dateBuy = dateBuy;
	}

	public CarritoId() {
		super();
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public int getElemento() {
		return elemento;
	}

	public void setElemento(int elemento) {
		this.elemento = elemento;
	}

	@Override
	public int hashCode() {
		return Objects.hash(elemento, usuario);
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
		return elemento == other.elemento && Objects.equals(usuario, other.usuario);
	}
	
	
}
