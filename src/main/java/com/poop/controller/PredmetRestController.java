package com.poop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.poop.model.Predmet;
import com.poop.model.Student;
import com.poop.services.PredmetService;

@RestController
public class PredmetRestController {
	
	@Autowired
	private PredmetService predmetService;
	
	@GetMapping("/savepredmet")
	public String saveStudent(@RequestParam String nazivPredmeta,@RequestParam String smer,@RequestParam int godina,@RequestParam String imeProfesora,String jmbg) {
		Predmet predmet = new Predmet(nazivPredmeta, smer, godina, imeProfesora,jmbg);
		predmetService.saveMyPredmet(predmet);
		
		return "Predmet sacuvan";
	}
}
