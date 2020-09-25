package com.poop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poop.model.Predmet;

public interface PredmetRepository extends JpaRepository<Predmet, Long> {
	
	List<Predmet> findAllByJmbg(String jmbg);
	Predmet findByNazivPredmeta(String nazivPredmeta);
}
