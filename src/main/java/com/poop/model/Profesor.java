package com.poop.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="profesori")
public class Profesor {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private String ime;
	private String Prezime;
	private String jmg;
	private String institut;
	private String password;
	private String godine;
	
	public Profesor() {
		
	}
	
	public Profesor(String ime, String prezime, String jmg, String institut, String password, String godine) {
		super();
		this.ime = ime;
		Prezime = prezime;
		this.jmg = jmg;
		this.institut = institut;
		this.password = password;
		this.godine = godine;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getIme() {
		return ime;
	}

	public void setIme(String ime) {
		this.ime = ime;
	}

	public String getPrezime() {
		return Prezime;
	}

	public void setPrezime(String prezime) {
		Prezime = prezime;
	}

	public String getJmg() {
		return jmg;
	}

	public void setJmg(String jmg) {
		this.jmg = jmg;
	}

	public String getInstitut() {
		return institut;
	}

	public void setInstitut(String institut) {
		this.institut = institut;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getGodine() {
		return godine;
	}

	public void setGodine(String godine) {
		this.godine = godine;
	}

	@Override
	public String toString() {
		return "Profesor [id=" + id + ", ime=" + ime + ", Prezime=" + Prezime + ", jmg=" + jmg + ", institut="
				+ institut + ", password=" + password + ", godine=" + godine + "]";
	}
	
	
}
