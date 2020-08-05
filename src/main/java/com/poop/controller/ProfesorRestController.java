package com.poop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.poop.model.Predmet;
import com.poop.model.Profesor;
import com.poop.services.ProfesorService;

@RestController
public class ProfesorRestController {
	@Autowired
	private ProfesorService profesorService;
	
	@GetMapping("/saveprofesor")
	public String saveStudent(@RequestParam String ime,@RequestParam String prezime,@RequestParam String jmg,@RequestParam String institut,@RequestParam String password,@RequestParam String godina) {
		Profesor profesor = new Profesor(ime, prezime, jmg, institut, password, godina);
		profesorService.saveMyProfesor(profesor);
		
		return "Predmet sacuvan";
	}
}
