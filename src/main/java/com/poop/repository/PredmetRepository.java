package com.poop.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poop.model.Predmet;

public interface PredmetRepository extends JpaRepository<Predmet, Long> {

}
