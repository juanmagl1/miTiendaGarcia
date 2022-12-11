package com.jacaranda.logica;

import java.time.LocalDate;
import java.util.List;
import java.util.Objects;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity (name="USUARIOS")
public class User {
@Id
private String users;
private String pass;
private String name;
private String email;
private LocalDate dateBirthday;
private char gender;
private boolean admin;
@OneToMany(mappedBy="users",cascade=CascadeType.ALL,orphanRemoval=true)
private List<Compra> articlesList;

public User(String users, String pass, String name,String email, LocalDate dateBirthday, char gender, boolean admin) {
	super();
	this.users = users;
	this.pass = pass;
	this.name = name;
	this.email=email;
	this.dateBirthday = dateBirthday;
	this.gender = gender;
	this.admin = admin;
}

public User() {
	super();
}

@Override
public int hashCode() {
	return Objects.hash(pass, users);
}

@Override
public boolean equals(Object obj) {
	if (this == obj)
		return true;
	if (obj == null)
		return false;
	if (getClass() != obj.getClass())
		return false;
	User other = (User) obj;
	return Objects.equals(pass, other.pass) && Objects.equals(users, other.users);
}

public String getUsers() {
	return users;
}

public void setUsers(String users) {
	this.users = users;
}

public String getPass() {
	return pass;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public void setPass(String pass) {
	this.pass = pass;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public LocalDate getDateBirthday() {
	return dateBirthday;
}

public void setDateBirthday(LocalDate dateBirthday) {
	this.dateBirthday = dateBirthday;
}

public char getGender() {
	return gender;
}

public void setGender(char gender) {
	this.gender = gender;
}

public boolean isAdmin() {
	return admin;
}

public void setAdmin(boolean admin) {
	this.admin = admin;
}


}
