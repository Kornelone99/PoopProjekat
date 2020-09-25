package com.poop.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poop.model.Profesor;

public interface ProfesorRepository extends JpaRepository<Profesor, Long> {
	Profesor findByJmg(String jmbg);
}
