package com.poop.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poop.model.Predmet;
import com.poop.model.Profesor;
import com.poop.services.PredmetService;
import com.poop.services.ProfesorService;

@Controller
public class ProfesorAppController {
	
	@Autowired
	private ProfesorService profesorService;
	
	@RequestMapping("/create-profesor")
	public String createStudent(HttpServletRequest request) {
	//	request.setAttribute("mode", "MODE_CREATE_PREDMET");
		return "createProfesor";
	}
	
	@PostMapping("/save-profesor")
	public String registerProfesor(@ModelAttribute Profesor profesor,BindingResult bindingResult,HttpServletRequest request) {
		profesorService.saveMyProfesor(profesor);
	//	request.setAttribute("mode", "MODE_HOME")
		return "welcomepage";
	}
	
	@GetMapping("/show-profesors")
	public String showAllStudents(HttpServletRequest request) {
		request.setAttribute("mode", "ALL_PROFESORS");
		request.setAttribute("profesors", profesorService.showAllProfesors());
		return "showProfesors";
	}
	
	@RequestMapping("/delete-profesor")
	public String deleteProfesor(@RequestParam Long id, HttpServletRequest request) {
		profesorService.deleteMyProfesor(id);;
		request.setAttribute("profesors", profesorService.showAllProfesors());
		request.setAttribute("mode", "ALL_PROFESORS");
		return "showProfesors";
	}
	
	@RequestMapping("/edit-profesor")
	public String editStudent(@RequestParam Long id, HttpServletRequest request) {
		request.setAttribute("profesor", profesorService.editProfesor(id));
	//	request.setAttribute("mode", "MODE_UPDATE");
		return "updateProfesor";
	}
	
}
