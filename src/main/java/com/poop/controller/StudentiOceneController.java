package com.poop.controller;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.poop.model.Student;
import com.poop.model.StudentiOcene;
import com.poop.repository.StudentiOceneRepository;
import com.poop.services.StudentiOceneService;

@Controller
public class StudentiOceneController {
	@Autowired
	StudentiOceneService studentiOceneService;
	
	@Autowired
	StudentiOceneRepository studentiOceneRepository;
	
	@PostMapping("/student/save-student-ocena")
	public String prijaviIspitStudenta(@ModelAttribute StudentiOcene studentiOcene,BindingResult bindingResult,HttpServletRequest request) {
		System.out.println("AAAA" + studentiOcene);
		
		if(!studentiOceneRepository.existsByEmailAndPredmetAndOcenaIsNot(studentiOcene.getEmail(), studentiOcene.getPredmet(), 5)) {
			studentiOceneService.saveMyStudentOcene(studentiOcene);
			request.setAttribute("mode", "PRIJAVLJENO");
		}
		else {
			request.setAttribute("mode", "NIJE_PRIJAVLJENO");
		}

			
		System.out.println("BBBB" + studentiOcene);
		request.setAttribute("student", studentiOcene);
		return "prijavaIspita";
	}
	
	@GetMapping("/student/show-ocene")
	public String showStudentOcene(HttpServletRequest request) {
		request.setAttribute("studentiOcene", studentiOceneService.showOcene());
		request.setAttribute("mode", "MODE_PRIJAVE");
		return "prikaziMojeOcene";
	}
	
	@GetMapping("/student/show-prosek")
	public String showStudentProsek(HttpServletRequest request) {
		request.setAttribute("studentiOcene", studentiOceneService.showProsek());
		request.setAttribute("mode", "MODE_PROSEK");
		double prosek = studentiOceneService.dajProsek(studentiOceneService.showProsek());
		request.setAttribute("prosek", new BigDecimal(prosek).setScale(2, RoundingMode.HALF_EVEN));
		return "prikaziMojeOcene";
	}
	
}