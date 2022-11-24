package com.jacaranda.logica;

import java.util.Objects;

public class ItemCarrito {
private int id_Element;
private int cant;

public ItemCarrito(int id_Element, int cant) {
	super();
	this.id_Element = id_Element;
	this.cant = cant;
}

public int getId_Element() {
	return id_Element;
}

public void setId_Element(int id_Element) {
	this.id_Element = id_Element;
}

public int getCant() {
	return cant;
}

public void setCant(int cant) {
	this.cant = cant;
}

@Override
public int hashCode() {
	return Objects.hash(id_Element);
}

@Override
public boolean equals(Object obj) {
	if (this == obj)
		return true;
	if (obj == null)
		return false;
	if (getClass() != obj.getClass())
		return false;
	ItemCarrito other = (ItemCarrito) obj;
	return id_Element == other.id_Element;
}




}
