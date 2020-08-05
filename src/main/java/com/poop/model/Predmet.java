package com.poop.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="predmeti")
public class Predmet {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private String nazivPredmeta;
	private String smer;
	private int godina;
	private String imeProfesora;
	
	public Predmet() {
		
	}
	
	public Predmet(String nazivPredmeta, String smer, int godina, String imeProfesora) {
		super();
		this.nazivPredmeta = nazivPredmeta;
		this.smer = smer;
		this.godina = godina;
		this.imeProfesora = imeProfesora;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNazivPredmeta() {
		return nazivPredmeta;
	}

	public void setNazivPredmeta(String nazivPredmeta) {
		this.nazivPredmeta = nazivPredmeta;
	}

	public String getSmer() {
		return smer;
	}

	public void setSmer(String smer) {
		this.smer = smer;
	}

	public int getGodina() {
		return godina;
	}

	public void setGodina(int godina) {
		this.godina = godina;
	}

	public String getImeProfesora() {
		return imeProfesora;
	}

	public void setImeProfesora(String imeProfesora) {
		this.imeProfesora = imeProfesora;
	}

	@Override
	public String toString() {
		return "Predmet [id=" + id + ", nazivPredmeta=" + nazivPredmeta + ", smer=" + smer + ", godina=" + godina
				+ ", imeProfesora=" + imeProfesora + "]";
	}
	
	
}
