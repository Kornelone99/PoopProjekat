package com.poop.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

import com.poop.model.StudentiOcene;

public interface StudentiOceneRepository extends JpaRepository<StudentiOcene, Long> {
	
	List<StudentiOcene> findAllByPredmet(String predmet);
	
	boolean existsByEmailAndPredmetAndOcenaIsNot(String email, String predmet, int ocena);
	
	List<StudentiOcene> findAllByEmail(String email);
}