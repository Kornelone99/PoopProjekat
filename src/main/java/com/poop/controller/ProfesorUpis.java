package com.poop.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.jasper.tagplugins.jstl.core.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poop.model.Predmet;
import com.poop.model.Student;
import com.poop.model.StudentiOcene;
import com.poop.repository.PredmetRepository;
import com.poop.services.ProfesorOceneService;
import com.poop.services.ProfesorService;

@Controller
public class ProfesorUpis {

	@Autowired
	ProfesorOceneService profesorOceneService;

	@Autowired
	PredmetRepository predmetRepository;

	@RequestMapping("/profesor")
	public String createStudent(HttpServletRequest request) {
		java.util.Set<Predmet> predmeti = profesorOceneService.mySubjects();
		Predmet myPredmet = null;
		for(Predmet predmet : predmeti ) 
		{
			myPredmet = predmet;
			break;
		}
		request.setAttribute("predmeti", predmeti);
		request.setAttribute("mypredmet", myPredmet);
		return "profesorWelcome";
	}

	@PostMapping("/profesor/izabran-predmet")
	public String odaberiPredmet(@ModelAttribute Predmet predmet,BindingResult bindingResult,HttpServletRequest request) {
		System.out.println("PROFESOR PRIJAVE " + profesorOceneService.prijavljeniIspiti(predmet.getNazivPredmeta()) + " naziv " + predmet.getNazivPredmeta());
		
		
		request.setAttribute("prijavljeniIspiti", profesorOceneService.prijavljeniIspiti(predmet.getNazivPredmeta()));
		request.setAttribute("myPredmet", predmet);
		return "profesorDajOcene";
	}

	@PostMapping("/profesor/save-student-ocena")
	public String registerStudent(@ModelAttribute StudentiOcene studentiOcena,BindingResult bindingResult,HttpServletRequest request) {
		profesorOceneService.upisiOcenu(studentiOcena);
		System.out.println("studenti ocena " + studentiOcena);

		request.setAttribute("prijavljeniIspiti", profesorOceneService.prijavljeniIspiti(studentiOcena.getPredmet()));
		request.setAttribute("myPredmet", predmetRepository.findByNazivPredmeta(studentiOcena.getPredmet()));
		return "profesorDajOcene";
	}
}