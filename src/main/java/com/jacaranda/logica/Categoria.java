package com.jacaranda.logica;

import java.util.List;
import java.util.Objects;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity(name="CATEGORIA")
public class Categoria {
@Id
private int id;
private String name;
private String description;
@OneToMany(mappedBy="id_categoria",cascade = CascadeType.ALL, orphanRemoval = true)
private List<Elementos> list;

public Categoria(int id, String name, String description) {
	super();
	this.id = id;
	this.name = name;
	this.description = description;
	this.list=null;
}
public Categoria() {
	super();
}
public int getId() {
	return id;
}
public List<Elementos>getElementos(){
	return this.list;
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
@Override
public int hashCode() {
	return Objects.hash(id, name);
}
@Override
public boolean equals(Object obj) {
	if (this == obj)
		return true;
	if (obj == null)
		return false;
	if (getClass() != obj.getClass())
		return false;
	Categoria other = (Categoria) obj;
	return id == other.id && Objects.equals(name, other.name);
}

}
