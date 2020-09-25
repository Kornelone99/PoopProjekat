package com.poop.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="StudentiOcene")
public class StudentiOcene {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private String ime;
	private String prezime;
	private String email;
	private int ocena;
	private String predmet;
	
	public StudentiOcene() {
		
	}

	

	public StudentiOcene(String ime, String prezime, String email, int ocena, String predmet) {
		super();
		this.ime = ime;
		this.prezime = prezime;
		this.email = email;
		this.ocena = ocena;
		this.predmet = predmet;
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
		return prezime;
	}

	public void setPrezime(String prezime) {
		this.prezime = prezime;
	}

	

	public int getOcena() {
		return ocena;
	}

	public void setOcena(int ocena) {
		this.ocena = ocena;
	}

	public String getPredmet() {
		return predmet;
	}

	public void setPredmet(String predmet) {
		this.predmet = predmet;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}



	@Override
	public String toString() {
		return "StudentiOcene [id=" + id + ", ime=" + ime + ", prezime=" + prezime + ", email=" + email + ", ocena="
				+ ocena + ", predmet=" + predmet + "]";
	}
	
	
	
	
}